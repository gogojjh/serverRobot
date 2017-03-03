#ifndef IMAGEDATA_H
#define IMAGEDATA_H

#include <vector>
#include <opencv2/opencv.hpp>

namespace ORB_SLAM2
{

using namespace std;
	
class IMAGEData
{
public:
	IMAGEData(const std::vector< cv::KeyPoint > vkeyPoints, const cv::Mat descriptors, const int row, 
			const int col, const int nKeyPoints, const int nNextId, const int mnId, const double imageTimeStamp);
	vector<cv::KeyPoint> _vkeyPoints;
	cv::Mat _descriptors;
	// size of image
	int _row;
	int _col;
	// number of keypoints
	int _N;
	// next frame id
	int _nNextId;
	// current frame id
	int _mnId;
	// timestamp of this image message
	double _imageTimeStamp;
};

}

#endif