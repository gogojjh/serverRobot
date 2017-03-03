echo "Configuring ROS  package path ..."
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/documents/serverRobot/ORB_SERVER
echo $ROS_PACKAGE_PATH

echo "Configuring and building Thirdparty/DBoW2 ..."
cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make  

cd ../../g2o
echo "Configuring and building Thirdparty/g2o ..."
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make

cd ../../../
echo "Uncompress vocabulary ..."
#cd Vocabulary
#tar -xf ORBvoc.txt.tar.gz
#cd ..

echo "Configuring and building ORB_SLAM2 ..."
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=cd Release
make 
cd ..

echo "Build ROS node ..."
cd ORB_SERVER
mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j 2
cd ../

echo ""
echo "Launch file in ORB_SERVER/launch."
echo "Modify the configure clientRobot testeuroc.launch"
echo ""

#echo "Converting vocabulary to binary"
#./tools/bin_vocabulary
