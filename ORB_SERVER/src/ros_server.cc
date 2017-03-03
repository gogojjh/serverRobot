/**
* This file is part of ORB-SLAM2.
*
* Copyright (C) 2014-2016 Raúl Mur-Artal <raulmur at unizar dot es> (University of Zaragoza)
* For more information see <https://github.com/raulmur/ORB_SLAM2>
*
* ORB-SLAM2 is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* ORB-SLAM2 is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with ORB-SLAM2. If not, see <http://www.gnu.org/licenses/>.
*/

#include<iostream>
#include <fstream>
#include<algorithm>
#include<fstream>
#include<chrono>
#include <iomanip>

#include <ros/ros.h>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
#include "ORB_SERVER/msg_gen/cpp/include/ORB_SERVER/clientBag.h"
#include "ORB_SERVER/msg_gen/cpp/include/ORB_SERVER/dstate.h"

#include "../include/System.h"
#include "MsgSync/MsgSynchronizer.h"
#include "../src/IMU/imudata.h"
#include "../src/IMU/configparam.h"
#include "../src/imagedata.h"

#include <rosbag/bag.h>
#include <rosbag/view.h>

#include <boost/foreach.hpp>
#include <unistd.h>
#include <opencv2/opencv.hpp>

using namespace std;

int main(int argc, char **argv)
{	
	ros::init(argc, argv, "server_robot_node"); // 参数
	if(argc != 3)
	{
		cerr << endl << "Usage: rosrun ORB_SERVER server_robot_node path_to_vocabulary path_to_settings" << endl;
		ros::shutdown();
		return 1;
	}
	// Create SLAM system. It initializes all system threads and gets ready to process frames.
	ORB_SLAM2::System SLAM(argv[1],argv[2],ORB_SLAM2::System::MONOCULAR,true); // Vocabulary文件和config文件
	ORB_SLAM2::ConfigParam config(argv[2]);
	
	double imageMsgDelaySec = config.GetImageDelayToIMU();
	ORBVIO::MsgSynchronizer msgsync(imageMsgDelaySec);
	ros::NodeHandle nh;
 	ros::Subscriber bagsub = nh.subscribe("/orbslam2/client/bag", 10, &ORBVIO::MsgSynchronizer::clientBagCallback, &msgsync);
	ros::Publisher dstatepub = nh.advertise<ORB_SERVER::dstate>("/orbslam2/server/dstate", 10);
	ROS_INFO("server begins to receive IMU data and IMAGE ...");
	
 	bool bMsgdelay = false;
// 	要考虑上传消息同步问题,需要用buff存储
// 	// Consider delay of image message
// 	{
// 		static double startT=-1;
// 		if(startT<0)
// 			startT = clientBag.sendTimestamp;
// 		
// 		// Below to test relocalizaiton
// 		if(clientBag.sendTimestamp < startT+config._testDiscardTime)
// 			bMsgdelay = true;
// 	}
	
	ros::Rate r(1000);
	while ( ros::ok() )
	{
		if ( (msgsync._bdata) && (!bMsgdelay) )
		{
			if ( msgsync._imuNum == 0 ) 
			{
				ROS_INFO("no imu data");
				break;
			}
			
			// 存储IMU数据
			vector<ORB_SLAM2::IMUData> vImuData;
			for (unsigned int i=0; i<msgsync._imuNum; i++)
			{
				ORB_SLAM2::IMUData imudata(msgsync._vgyr[i].gyrx, msgsync._vgyr[i].gyry, msgsync._vgyr[i].gyrz,
											msgsync._vacc[i].accx, msgsync._vacc[i].accy, msgsync._vacc[i].accz,
											msgsync._vimuTimeStamp[i]);
				vImuData.push_back(imudata);
			}
			
			// 存储IMAGE数据
			ORB_SLAM2::IMAGEData imagedata(msgsync._vkeyPoints, msgsync._descriptors, msgsync._row,
												msgsync._col, msgsync._nKeyPoints, msgsync._nNextId, 
												msgsync._mnId, msgsync._imageTimeStamp);
			//cout << "R: " << msgsync._descriptors.rows << " C: " << msgsync._descriptors.cols << endl;
// 			cout << "Number of keypoints " << msgsync._nKeyPoints << endl;
			
// 			cv::imshow("Server",msgsync._descriptors);
// 			SLAM.TrackMonoVI(msgsync._im, vImuData, imagedata._imageTimeStamp - imageMsgDelaySec);
			SLAM.TrackMonoVI(imagedata, vImuData, imagedata._imageTimeStamp - imageMsgDelaySec);        
// 			ROS_INFO("TrackMonoVI OK !!!!!");

			// Wait local mapping end. 是否一直有KF加, 间隔3000ms. 加完便不进入循环
			// 首帧不进入循环
			bool bstop = false;
			while ( !SLAM.bLocalMapAcceptKF() )
			{
				if ( !ros::ok())
				{
					bstop = true;
				}
			}		
			if (bstop)
				break;

			msgsync.initialization(); // 发现一个bug
			static ORB_SERVER::dstate state;
			state.sendTimestamp = ros::Time::now().toSec();
			dstatepub.publish(state);
// 			ROS_INFO("Finish!");
		}
		cv::waitKey(1);
		ros::spinOnce();
		r.sleep();
	}
		
	SLAM.SaveKeyFrameTrajectoryNavState(config._tmpFilePath+"KeyFrameNavStateTrajectory.txt");	
		
	cout << endl << endl << "press any key to shutdown" << endl;
	getchar();

	SLAM.Shutdown();
	ros::shutdown();
	
	return 0;
}

//void ImageGrabber::GrabImage(const sensor_msgs::ImageConstPtr& msg)
//{
//    // Copy the ros image message to cv::Mat.
//    cv_bridge::CvImageConstPtr cv_ptr;
//    try
//    {
//        cv_ptr = cv_bridge::toCvShare(msg);
//    }
//    catch (cv_bridge::Exception& e)
//    {
//        ROS_ERROR("cv_bridge exception: %s", e.what());
//        return;
//    }

//    mpSLAM->TrackMonocular(cv_ptr->image,cv_ptr->header.stamp.toSec());
//}


