#include "imagedata.h"

namespace ORB_SLAM2 
{
	
IMAGEData::IMAGEData(const std::vector< cv::KeyPoint > vkeyPoints, const cv::Mat descriptors, const int row, 
						const int col, const int nKeyPoints, const int nNextId, const int mnId, const double imageTimeStamp)
						:_vkeyPoints(vkeyPoints), _descriptors(descriptors.clone()), _row(row), _col(col),  _N(nKeyPoints), _nNextId(nNextId), 
						_mnId(mnId), _imageTimeStamp(imageTimeStamp)
{}
	
}