# 3DMAGNSS/VINS-IO FGO

<!-- Prerequisites  -->
## Prerequisites

This package is tested in Ubuntu 18.04 under ROS Kinetic environment.
It requires C++11, Eigen 3.3.3, Pangolin and ceres 1.12.0.



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

<!-- Related Publications  -->
## Related Publications
