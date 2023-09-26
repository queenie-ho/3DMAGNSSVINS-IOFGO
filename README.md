# 3DMAGNSS/VINS-IO FGO

<!-- Prerequisites  -->
## Prerequisites

This package is tested in Ubuntu 18.04 under ROS Kinetic environment.
It requires C++11, <a href="https://opencv.org/">OpenCV</a> , <a href="https://gitlab.com/libeigen/eigen/-/archive/3.3.3/eigen-3.3.3.zip">Eigen 3.3.3</a> , <a href="https://github.com/stevenlovegrove/Pangolin">Pangolin</a> and <a href="http://ceres-solver.org/installation.html">Ceres 1.12.0.</a> 


<!-- Build 3DMAGNSS/VINS-IO FGO  -->
## Build 3DMAGNSS/VINS-IO FGO on Linux

Clone the repository and catkin_make:

    cd ~/catkin_ws/src
    git clone https://github.com/queenie-ho/3DMAGNSS-VINS-IO-FGO.git
    cd ../
    catkin_make
    source ~/catkin_ws/devel/setup.bash
    
<!-- Run 3DMAGNSS/VINS-IO FGO  -->
## Run 3DMAGNSS/VINS-IO FGO with our dataset

    roslaunch vins_estimator euroc.launch 
    roslaunch vins_estimator vins_rviz.launch

<!-- Acknowledgements  -->
## Acknowledgements    
The system framework and VIO part are adapted from <a href="https://github.com/HKUST-Aerial-Robotics/VINS-Mono">VINS-Mono</a>. We use <a href="http://ceres-solver.org/index.html">Ceres</a> to do the optimization.

<!-- Related Publications  -->
## Related Publications
Ho, H. Y., Ng, H. F., Leung, Y. T., Wen, W., Hsu, L. T., & Luo, Y. (2023). Smartphone Level Indoor/outdoor Ubiquitous Pedestrian Positioning 3DMA Gnss/vins Integration Using Fgo. The International Archives of the Photogrammetry, Remote Sensing and Spatial Information Sciences, 48, 175-182.
<br>Qin, T., Li, P., & Shen, S. (2018). Vins-mono: A robust and versatile monocular visual-inertial state estimator. IEEE Transactions on Robotics, 34(4), 1004-1020.
