#ifndef MSGSYNCHRONIZER_H
#define MSGSYNCHRONIZER_H

#include <queue>
#include <iostream>

#include <ros/ros.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Image.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/Imu.h>

#include "ORB_SERVER/msg_gen/cpp/include/ORB_SERVER/clientBag.h"
#include "../src/IMU/imudata.h"

#include <opencv2/opencv.hpp>

using namespace std;

namespace ORBVIO
{
class MsgSynchronizer
{
public:
	enum Status{
		NOTINIT = 0,
		INIT,
		NORMAL
	};

	MsgSynchronizer(const double& imagedelay = 0.);
	~MsgSynchronizer();

	// add messages in callbacks
	void addImageMsg(const sensor_msgs::ImageConstPtr &imgmsg);
	void addImuMsg(const sensor_msgs::ImuConstPtr &imumsg);

	// loop in main function to handle all messages
	// 读取一个图像msg和一组IMUmsg
	bool getRecentMsgs(sensor_msgs::ImageConstPtr &imgmsg, std::vector<sensor_msgs::ImuConstPtr> &vimumsgs);

	void clearMsgs(void);

	// for message callback if needed
	void imageCallback(const sensor_msgs::ImageConstPtr& msg);
	void imuCallback(const sensor_msgs::ImuConstPtr& msg);

	// 读取client的消息
	void clientBagCallback(const ORB_SERVER::clientBagPtr& msg);
	
	inline Status getStatus(void) {return _status;}

	double getImageDelaySec(void) const {return _imageMsgDelaySec;}
	
	void PublishInitialization();
	
	void initialization();

public:
	vector<cv::KeyPoint> _vkeyPoints;
	cv::Mat _descriptors;
	//cv::Mat _im;
	double _imageTimeStamp;
	// number of keypoints
	int _nKeyPoints;
	int _nNextId, _mnId;
	int _row, _col;
	
	vector<ORB_SLAM2::IMUData> _vimuData;
	vector<double> _vimuTimeStamp;
	vector<ORB_SERVER::gyroscope> _vgyr;
	vector<ORB_SERVER::accleration> _vacc;	
	int _imuNum;
	
	// the time stamp when client send message
	double _clientMsgTimeStamp;
	bool _bdata;
	
private:
	double _imageMsgDelaySec;  // image message delay to imu message, in seconds
	std::queue<sensor_msgs::ImageConstPtr> _imageMsgQueue;
	std::queue<sensor_msgs::ImuConstPtr> _imuMsgQueue;
	ros::Time _imuMsgTimeStart;
	Status _status;
	int _dataUnsyncCnt;
};

}

#endif // MSGSYNCHRONIZER_H
