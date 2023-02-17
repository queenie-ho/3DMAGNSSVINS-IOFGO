// #pragma once
#include <ceres/ceres.h>
#include "factors.h"
#include <fstream>
#include <sstream>
#include <iterator>
#include <vector>
#include <iostream>
#include <map>
#include <mutex>
#include <cv_bridge/cv_bridge.h>
#include <stdio.h>
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Geometry>
#include <opencv2/core/core.hpp>
#include <opencv2/core/eigen.hpp>
#include <std_msgs/Header.h>
#include <std_msgs/Float32.h>
#include <boost/algorithm/string.hpp>
#include "estimator.h"
using namespace std;
std::string IOpath = "/home/xb/csvfgo/csv/202210200304/gnss_log_2022_10_20_18_03_04_result.csv"; // Read the file
std::string IOtimepath = "/home/xb/csvfgo/csv/202210200304/IO(systime)_2022_10_20_18_03_04.csv"; // Read the file
std::string VIOpath = "/home/xb/csvfgo/csv/202210200304/vins_result_no_loop.csv"; // Read the file
std::string GNSSpath = "/home/xb/csvfgo/csv/202210200304/csvfgo(systime)_gnss_log_2022_10_20_18_03_04.csv"; // Read the file

// std::string IOpath = "/home/xb/csvfgo/csv/20230127181009/gnss_log_2023_01_27_18_10_09_IO_lebal_result.csv"; // Read the file
// std::string IOtimepath = "/home/xb/csvfgo/csv/20230127181009/gnss_log_2023_01_27_18_10_09_IO_time.csv"; // Read the file
// std::string VIOpath = "/home/xb/csvfgo/csv/20230127181009/vins_result_no_loop_modified.csv"; // Read the file
// std::string GNSSpath = "/home/xb/csvfgo/csv/20230127181009/csvfgo_2023_01_27_18_10_09_fgo.csv"; // Read the file

// std::string VIOpath = "/home/xb/csvfgo/csv/vins_result_no_loop_modified.csv"; // Read the file

// std::string IOpath = "/home/xb/csvfgo/csv/20230127183118/gnss_log_2023_01_27_18_31_18_IO_lebal_result.csv"; // Read the file
// std::string IOtimepath = "/home/xb/csvfgo/csv/20230127183118/csvfgo_2023_01_27_18_31_18_IO_time.csv"; // Read the file
// std::string VIOpath = "/home/xb/csvfgo/csv/20230127183118/vins_result_no_loop_modified.csv"; // Read the file
// std::string GNSSpath = "/home/xb/csvfgo/csv/20230127183118/csvfgo_2023_01_27_18_31_18_nmea.csv"; // Read the file


std::vector<std::vector<ObsPtr>> gpsresult;
std::vector<std::vector<EphemBasePtr>> gpsresult_buf;
std::vector<double> gpsresult_buf_;
bool newGPS= false;
Eigen::Vector3d gpsinput;
void readIOresult(std::string IOpath, std::vector<int> &result)
{
    std::printf("read io result ... "); std::fflush(stdout);
    int IO;
    FILE* pathFile;
    const char * c = IOpath.c_str();
    pathFile = fopen(c ,"r");
    if(pathFile == NULL)
    {printf( "open failure" );}    

    ifstream fin(c); 
    string s;  
    while( getline(fin,s) )
    {    
   // cout << "Read from file: " << s << endl; 
    IO = stoi((s).c_str(), NULL);
    result.push_back(IO);
    }
    std::printf("done\n");
    cout<<result.size()<<endl;
}
void readIOtimeresult(std::string IOtimepath, std::vector<double> &IOtimeresult)
{
    std::printf("read iotime result ... "); std::fflush(stdout);
    double IOtime;
    FILE* pathFile;
    const char * c = IOtimepath.c_str();
    pathFile = fopen(c ,"r");
    if(pathFile == NULL)
    {printf( "open failure" ); }    

    ifstream fin(c); 
    string s;  
    while( getline(fin,s) )
    {    
   // cout << "Read from file: " << s << endl; 
    IOtime = stod((s).c_str(), NULL);
    IOtimeresult.push_back(IOtime);
    }
    std::printf("done\n");
    cout<<IOtimeresult.size()<<endl;
}
void readVINSresult(std::string VIOpath)
{
    std::cout << "read vins result ... "; std::fflush(stdout);
    FILE* pathFile;
    const char * c = VIOpath.c_str();
    pathFile = fopen(c ,"r");
    if(pathFile == NULL)
    {printf( "open failure" );}    
    // vector<double> result_t;
    // double t;
    // vector<Eigen::Vector3d> result_P;
    // Eigen::Vector3d P; 
    // vector<Eigen::Quaterniond> result_Q;
    // Eigen::Quaterniond Q;
    double t, px, py, pz, Qx, Qy, Qz, Qw, vx, vy, vz;
    vector<double> result_t, result_px, result_py, result_pz, result_Qx, result_Qy, result_Qz, result_Qw,
     result_vx, result_vy, result_vz;

    ifstream fin(c); 
    string s;  
    // while( getline(fin,s) )
    // {    
    //     std::vector<std::string> tkns;
    //     boost::split(tkns, s, boost::is_any_of(","));
    //     for (int i = 0; i < tkns.size(); i++) {
    //         switch (i) {
    //         case 0:
    //             t = stod((tkns[i]).c_str(), NULL);
    //             break;
    //         case 1:
    //         case 2:
    //         case 3:
    //             P(i-1) = stod((tkns[i]).c_str(), NULL);
    //             break;
    //         case 4:
    //             Q.x() = stod((tkns[i]).c_str(), NULL); 
    //             break;   
    //         case 5:
    //             Q.y() = stod((tkns[i]).c_str(), NULL); 
    //             break;   
    //         case 6:
    //             Q.z() = stod((tkns[i]).c_str(), NULL); 
    //             break;   
    //         case 7:
    //             Q.w() = stod((tkns[i]).c_str(), NULL);
    //             break;
    //         }
    // result_t.push_back(t);
    // result_P.push_back(P);
    // result_Q.push_back(Q);
    //     }
    // inputOdom(result_t,result_P,result_Q);
    // }
    while( getline(fin,s) )
    {    
        std::vector<std::string> tkns;
        boost::split(tkns, s, boost::is_any_of(","));
        for (int i = 0; i < tkns.size(); i++) {
            switch (i) {
            case 0:
                t = stod((tkns[i]).c_str(), NULL);
                result_t.push_back(t);
                break;
            case 1:
                px = stod((tkns[i]).c_str(), NULL);
                result_px.push_back(px);
                break;
            case 2:
                py = stod((tkns[i]).c_str(), NULL);
                result_py.push_back(py);
                break;
            case 3:
                pz = stod((tkns[i]).c_str(), NULL);
                result_pz.push_back(pz);
                break;
            case 4:
                Qx = stod((tkns[i]).c_str(), NULL); 
                result_Qx.push_back(Qx);
                break;   
            case 5:
                Qy = stod((tkns[i]).c_str(), NULL); 
                result_Qy.push_back(Qy);
                break;   
            case 6:
                Qz = stod((tkns[i]).c_str(), NULL); 
                result_Qz.push_back(Qz);
                break;   
            case 7:
                Qw = stod((tkns[i]).c_str(), NULL);
                result_Qw.push_back(Qw);
                break;
            case 8:
                vx = stod((tkns[i]).c_str(), NULL);
                result_vx.push_back(vx);
                break;
            case 9:
                vy = stod((tkns[i]).c_str(), NULL);
                result_vy.push_back(vy);
                break;
            case 10:
                vz = stod((tkns[i]).c_str(), NULL);
                result_vz.push_back(vz);
                break;
            }
        }
    }
    std::cout << "input odometry ... "; std::fflush(stdout);
    cout<<result_t.size()<<endl;
    inputOdom(result_t, result_px, result_py, result_pz, result_Qx, result_Qy, result_Qz, result_Qw,
     result_vx, result_vy, result_vz);
    std::cout << "done.\n";
}

void readGNSSresult(std::string GNSSpath)
{
    std::cout << "read gnss result ... ";  std::fflush(stdout);
    // vector < vector<double> > result(5, vector<double>(1));
    double t,lat,lon,alt,posAccuracy;
    vector < double >  result_t, result_lat, result_lon, result_alt, result_posAccuracy;
    FILE* pathFile;
    const char * c = GNSSpath.c_str();
    pathFile = fopen(c ,"r");
    if(pathFile == NULL)
    {printf( "open failure" );}    

    ifstream fin(c); 
    string s;  
    while( getline(fin,s) )
    {    
    std::vector<std::string> tkns;
    boost::split(tkns, s, boost::is_any_of(","));
    for (int i = 0; i < tkns.size(); i++) {
        switch (i) {
        case 0:
            t = stod((tkns[i]).c_str(), NULL);
            result_t.push_back(t);
            break;
        case 1:
            lat = stod((tkns[i]).c_str(), NULL);
            result_lat.push_back(lat);
            break;
        case 2:
            lon = stod((tkns[i]).c_str(), NULL);
            result_lon.push_back(lon);
            break;
        case 3:
            alt = stod((tkns[i]).c_str(), NULL);
            result_alt.push_back(alt);
            break;
        case 4:
            posAccuracy = stod((tkns[i]).c_str(), NULL);
            result_posAccuracy.push_back(posAccuracy);
            break;
        }
        // all_result.push_back(result_t, result_lat, result_lon, result_alt, result_posAccuracy)
        }
    inputGPS(result_t, result_lat, result_lon, result_alt, result_posAccuracy);
    }
    std::cout << "done.\n";
}

void inputOdom(vector<double> result_t, vector<double> result_px, vector<double> result_py, vector<double> result_pz, 
vector<double> result_Qx, vector<double> result_Qy, vector<double> result_Qz, vector<double> result_Qw, 
vector<double> result_vx, vector<double> result_vy, vector<double> result_vz)
{   
    cout<<"z"<<endl;
    mPoseMap.lock();
    double time;
    cout<<"z"<<endl;
    for (int i = 0; i < result_t.size(); i++) {
        Eigen::Vector3d P_;
        Eigen::Quaterniond Q_;
        Eigen::Vector3d V_;
    cout<<"1"<<endl;
    time = result_t[i];      
    P_(0) = result_px[i];   
    P_(1) = result_py[i];   
    P_(2) = result_pz[i];   
    cout<<"2"<<endl;
    P.push_back(P_);
    Q_.x() = result_Qx[i];
    Q_.y() = result_Qy[i];
    Q_.z() = result_Qz[i];
    Q_.w() = result_Qw[i];
    cout<<"3"<<endl;
    Q.push_back(Q_);
    V_(0) = result_vx[i];   
    V_(1) = result_vy[i];   
    V_(2) = result_vz[i];   
    cout<<"4"<<endl;
    V.push_back(V_);
    timeMap = result_t;
    // P[i].x = result_px[i];            
    // P.y[i] = result_py[i];
    // P.z[i] = result_pz[i];
    // Q.x()[i] << result_Qx[i];            
    // Q.y()[i] << result_Qy[i]; 
    // Q.x()[i] << result_Qz[i];            
    // Q.z()[i] << result_Qw[i]; 
    cout<<"5"<<endl;
    vector<double> localPose{P_(0), P_(1), P_(2), 
    					     Q_.w(), Q_.x(), Q_.y(), Q_.z(),
                             V_(0), V_(1), V_(2)};
    OrilocalPoseMap[time] = localPose;
    // Eigen::Quaterniond globalQ;
    // globalQ = WGPS_T_WVIO.block<3, 3>(0, 0) * Q;
    // Eigen::Vector3d globalP = WGPS_T_WVIO.block<3, 3>(0, 0) * P + WGPS_T_WVIO.block<3, 1>(0, 3);
    // vector<double> globalPose{globalP.x(), globalP.y(), globalP.z(),
    //                           globalQ.w(), globalQ.x(), globalQ.y(), globalQ.z()};
    // OriglobalPoseMap[time] = globalPose;
    
    
    }
    ///把VIO转换到GPS坐标系下，准确说转换到第一帧GPS为原点的坐标系下
    //把转换后的位姿插入到globalPoseMap
    
    // lastP = P;
    // lastV = V;
    // lastQ = Q;
    
}

void getGlobalOdom(Eigen::Vector3d &odomP, Eigen::Quaterniond &odomQ)
{
    printf("\ngetGlobalOdom\n");
    // odomP = lastP;
    // odomQ = lastQ;
}

void inputGPS(vector<double> result_t, vector<double> result_lat, vector<double> result_lon, vector<double> result_alt, 
vector<double> result_posAccuracy)
{
    std::printf("input gps %d %d %d %d ... ", result_t.size(), result_lat.size(), result_lon.size(), result_alt.size()); std::fflush(stdout);
	double time, xyz[3],latitude, longitude, altitude, posAccuracy;
	for (int i = 0; i < result_t.size(); i++) {
    time = result_t[i];
    latitude = result_lat[i];
    longitude = result_lon[i];
    altitude = result_alt[i];
    posAccuracy = result_posAccuracy[i];
    GPS2XYZ(latitude, longitude, altitude, xyz);
    double w_sigma = 0;
    cv::RNG rng;
    if(1)
    {
        xyz[0] = xyz[0] + rng.gaussian ( w_sigma );
        xyz[1] = xyz[1] + rng.gaussian ( w_sigma );
        xyz[2] = 0 * rng.gaussian ( w_sigma );
    }
	vector<double> tmp{xyz[0], xyz[1], xyz[2], posAccuracy};
    gpsinput << xyz[0], xyz[1], xyz[2];
    printf("CV RNG gps x: %f y: %f z: %f acc: %f \n", xyz[0], xyz[1], xyz[2], posAccuracy);
    vector <double> all_result {result_t[i], result_lat[i], result_lon[i], result_alt[i], result_posAccuracy[i]};
    // gpsresult << all_result;
    printf("==============================================================================================new gps: t: %f x: %f y: %f z:%f accura:%f \n", time, tmp[0], tmp[1], tmp[2],posAccuracy);
	OriGPSPositionMap[result_t[i]] = tmp;
    }printf("GPSMapSize: %d", OriGPSPositionMap.size());
    newGPS = true;
    // std::cin.get();

}
void GPS2XYZ(double latitude, double longitude, double altitude, double* xyz)
{
    // printf("\nGPS2XYZ;\n");
    // newGPS = false;
    // latitude += -11.20507;  
    // longitude += -23.60724;
    // altitude += -10.95947; 
    if(!newGPS)
    {
        geoConverter.Reset(latitude, longitude, altitude);
        newGPS = true;
    }
    geoConverter.Forward(latitude, longitude, altitude, xyz[0], xyz[1], xyz[2]);
    // xyz[0] += -11.20507;  
    // xyz[1] += -23.60724;
    // xyz[2] += -10.95947; 
    //2551 -11.20507 -23.60724 -10.95947 -0.29125 0.66597 -0.65687 0.20045 
    printf("la: %f lo: %f al: %f\n", latitude, longitude, altitude);
    printf("gps x: %f y: %f z: %f\n", xyz[0], xyz[1], xyz[2]);
    // printf("\nnewGPS = true;\n");
}

void vector2double()
{
    for (int i = 0; i <= WINDOW_SIZE; i++)
    {
        // para_Pose[i][0] = lastP[i].x();
        // para_Pose[i][1] = lastP[i].y();
        // para_Pose[i][2] = lastP[i].z();
        para_Pose[i][0] = OrilocalPoseMap[i][0];
        para_Pose[i][1] = OrilocalPoseMap[i][1];
        para_Pose[i][2] = OrilocalPoseMap[i][2];
        Quaterniond q{Q[i]};
        para_Pose[i][3] = q.x() = OrilocalPoseMap[i][3];
        para_Pose[i][4] = q.y() = OrilocalPoseMap[i][4];
        para_Pose[i][5] = q.z() = OrilocalPoseMap[i][5];
        para_Pose[i][6] = q.w() = OrilocalPoseMap[i][6];

        para_SpeedBias[i][0] = OrilocalPoseMap[i][7];
        para_SpeedBias[i][1] = OrilocalPoseMap[i][8];
        para_SpeedBias[i][2] = OrilocalPoseMap[i][9];

        para_SpeedBias[i][3] = Bas[i].x();
        para_SpeedBias[i][4] = Bas[i].y();
        para_SpeedBias[i][5] = Bas[i].z();

        para_SpeedBias[i][6] = Bgs[i].x();
        para_SpeedBias[i][7] = Bgs[i].y();
        para_SpeedBias[i][8] = Bgs[i].z();
    }
    for (int i = 0; i < NUM_OF_CAM; i++)
    {
        para_Ex_Pose[i][0] = tic[i].x();
        para_Ex_Pose[i][1] = tic[i].y();
        para_Ex_Pose[i][2] = tic[i].z();
        Quaterniond q{ric[i]};
        para_Ex_Pose[i][3] = q.x();
        para_Ex_Pose[i][4] = q.y();
        para_Ex_Pose[i][5] = q.z();
        para_Ex_Pose[i][6] = q.w();
    }

    VectorXd dep = f_manager.getDepthVector();
    for (int i = 0; i < f_manager.getFeatureCount(); i++)
        para_Feature[i][0] = dep(i);
    if (ESTIMATE_TD)
        para_Td[0][0] = td;
}
void double2vector()
{
    std::cout<<"double2vector"<<std::endl;
    Vector3d origin_R0 = Utility::R2ypr(Rs[0]);
    Vector3d origin_P0 = P[0];

    if (failure_occur)
    {
        origin_R0 = Utility::R2ypr(last_R0);
        origin_P0 = last_P0;
        failure_occur = 0;
    }
    Vector3d origin_R00 = Utility::R2ypr(Quaterniond(para_Pose[0][6],
                                                      para_Pose[0][3],
                                                      para_Pose[0][4],
                                                      para_Pose[0][5]).toRotationMatrix());
    double y_diff = origin_R0.x() - origin_R00.x();
    //TODO
    Matrix3d rot_diff = Utility::ypr2R(Vector3d(y_diff, 0, 0));
    if (abs(abs(origin_R0.y()) - 90) < 1.0 || abs(abs(origin_R00.y()) - 90) < 1.0)
    {
        ROS_DEBUG("euler singular point!");
        rot_diff = Rs[0] * Quaterniond(para_Pose[0][6],
                                       para_Pose[0][3],
                                       para_Pose[0][4],
                                       para_Pose[0][5]).toRotationMatrix().transpose();
    }

    for (int i = 0; i <= WINDOW_SIZE; i++)
    {

        Q[i] = rot_diff * Quaterniond(para_Pose[i][6], para_Pose[i][3], para_Pose[i][4], para_Pose[i][5]).normalized().toRotationMatrix();
        
        P[i] = rot_diff * Vector3d(para_Pose[i][0] - para_Pose[0][0],
                                para_Pose[i][1] - para_Pose[0][1],
                                para_Pose[i][2] - para_Pose[0][2]) + origin_P0;

        V[i] = rot_diff * Vector3d(para_SpeedBias[i][0],
                                    para_SpeedBias[i][1],
                                    para_SpeedBias[i][2]);

        Bas[i] = Vector3d(para_SpeedBias[i][3],
                          para_SpeedBias[i][4],
                          para_SpeedBias[i][5]);

        Bgs[i] = Vector3d(para_SpeedBias[i][6],
                          para_SpeedBias[i][7],
                          para_SpeedBias[i][8]);
    }

    for (int i = 0; i < NUM_OF_CAM; i++)
    {
        tic[i] = Vector3d(para_Ex_Pose[i][0],
                          para_Ex_Pose[i][1],
                          para_Ex_Pose[i][2]);
        ric[i] = Quaterniond(para_Ex_Pose[i][6],
                             para_Ex_Pose[i][3],
                             para_Ex_Pose[i][4],
                             para_Ex_Pose[i][5]).toRotationMatrix();
    }

    VectorXd dep = f_manager.getDepthVector();
    for (int i = 0; i < f_manager.getFeatureCount(); i++)
        dep(i) = para_Feature[i][0];
    f_manager.setDepth(dep);
    if (ESTIMATE_TD)
        td = para_Td[0][0];

    // relative info between two loop frame
    if(relocalization_info)
    { 
        Matrix3d relo_r;
        Vector3d relo_t;
        relo_r = rot_diff * Quaterniond(relo_Pose[6], relo_Pose[3], relo_Pose[4], relo_Pose[5]).normalized().toRotationMatrix();
        relo_t = rot_diff * Vector3d(relo_Pose[0] - para_Pose[0][0],
                                     relo_Pose[1] - para_Pose[0][1],
                                     relo_Pose[2] - para_Pose[0][2]) + origin_P0;
        double drift_correct_yaw;
        drift_correct_yaw = Utility::R2ypr(prev_relo_r).x() - Utility::R2ypr(relo_r).x();
        drift_correct_r = Utility::ypr2R(Vector3d(drift_correct_yaw, 0, 0));
        drift_correct_t = prev_relo_t - drift_correct_r * relo_t;   
        relo_relative_t = relo_r.transpose() * (P[relo_frame_local_index] - relo_t);
        relo_relative_q = relo_r.transpose() * Q[relo_frame_local_index];
        relo_relative_yaw = Utility::normalizeAngle(Utility::R2ypr(Rs[relo_frame_local_index]).x() - Utility::R2ypr(relo_r).x());
        //cout << "vins relo " << endl;
        //cout << "vins relative_t " << relo_relative_t.transpose() << endl;
        //cout << "vins relative_yaw " <<relo_relative_yaw << endl;
        relocalization_info = 0;    

    }
}
/*
void Estimator::optimization()
{
    ceres::Problem problem;
    // ceres::LossFunction *loss_function;
    // //loss_function = new ceres::HuberLoss(1.0);
    // loss_function = new ceres::CauchyLoss(1.0);
    // for (int i = 0; i < WINDOW_SIZE + 1; i++)
    // {
    //     ceres::LocalParameterization *local_parameterization = new PoseLocalParameterization();
    //     problem.AddParameterBlock(para_Pose[i], SIZE_POSE, local_parameterization);
    //     problem.AddParameterBlock(para_SpeedBias[i], SIZE_SPEEDBIAS);
    // }
    // for (int i = 0; i < NUM_OF_CAM; i++)
    // {
    //     ceres::LocalParameterization *local_parameterization = new PoseLocalParameterization();
    //     problem.AddParameterBlock(para_Ex_Pose[i], SIZE_POSE, local_parameterization);
    //     if (!ESTIMATE_EXTRINSIC)
    //     {
    //         ROS_DEBUG("fix extinsic param");
    //         problem.SetParameterBlockConstant(para_Ex_Pose[i]);
    //     }
    //     else
    //         ROS_DEBUG("estimate extinsic param");
    // }
    // if (ESTIMATE_TD)
    // {
    //     problem.AddParameterBlock(para_Td[0], 1);
    // }

    // if (gnss_ready)
    // {
        problem.AddParameterBlock(para_yaw_enu_local, 1);
        Eigen::Vector2d avg_hor_vel(0.0, 0.0);
        for (uint32_t i = 0; i <= WINDOW_SIZE; ++i)
            avg_hor_vel += Vs[i].head<2>().cwiseAbs();
        avg_hor_vel /= (WINDOW_SIZE+1);
        // cerr << "avg_hor_vel is " << avg_vel << endl;
        if (avg_hor_vel.norm() < 0.3)
        {
            // std::cerr << "velocity excitation not enough, fix yaw angle.\n";
            problem.SetParameterBlockConstant(para_yaw_enu_local);
        }

        for (uint32_t i = 0; i <= WINDOW_SIZE; ++i)
        {
            if (gnss_meas_buf[i].size() < 10)
                problem.SetParameterBlockConstant(para_yaw_enu_local);
        }
        
        problem.AddParameterBlock(para_anc_ecef, 3);
        // problem.SetParameterBlockConstant(para_anc_ecef);

        for (uint32_t i = 0; i <= WINDOW_SIZE; ++i)
        {
            for (uint32_t k = 0; k < 4; ++k)
                problem.AddParameterBlock(para_rcv_dt+i*4+k, 1);
            problem.AddParameterBlock(para_rcv_ddt+i, 1);
        }
    // }

    TicToc t_whole, t_prepare;
    vector2double();

    if (first_optimization)
    {
        std::vector<double> anchor_value;
        for (uint32_t k = 0; k < 7; ++k)
            anchor_value.push_back(para_Pose[0][k]);
        PoseAnchorFactor *pose_anchor_factor = new PoseAnchorFactor(anchor_value);
        problem.AddResidualBlock(pose_anchor_factor, NULL, para_Pose[0]);
        first_optimization = false;
    }

    // if (last_marginalization_info)
    // {
    //     // construct new marginlization_factor
    //     MarginalizationFactor *marginalization_factor = new MarginalizationFactor(last_marginalization_info);
    //     problem.AddResidualBlock(marginalization_factor, NULL,
    //                              last_marginalization_parameter_blocks);
    // }

    // for (int i = 0; i < WINDOW_SIZE; i++)
    // {
    //     int j = i + 1;
    //     if (pre_integrations[j]->sum_dt > 10.0)
    //         continue;
    //     IMUFactor* imu_factor = new IMUFactor(pre_integrations[j]);
    //     problem.AddResidualBlock(imu_factor, NULL, para_Pose[i], para_SpeedBias[i], para_Pose[j], para_SpeedBias[j]);
    // }

    // if (gnss_ready)
    // {
        // for(int i = 0; i <= WINDOW_SIZE; ++i)
        // {
        //     // cerr << "size of gnss_meas_buf[" << i << "] is " << gnss_meas_buf[i].size() << endl;
        //     const std::vector<ObsPtr> &curr_obs = gnss_meas_buf[i];
        //     const std::vector<EphemBasePtr> &curr_ephem = gnss_ephem_buf[i];

        //     for (uint32_t j = 0; j < curr_obs.size(); ++j)
        //     {
        //         const uint32_t sys = satsys(curr_obs[j]->sat, NULL);
        //         const uint32_t sys_idx = gnss_comm::sys2idx.at(sys);

        //         int lower_idx = -1;
        //         const double obs_local_ts = time2sec(curr_obs[j]->time) - diff_t_gnss_local;
        //         if (Headers[i].stamp.toSec() > obs_local_ts)
        //             lower_idx = (i==0? 0 : i-1);
        //         else
        //             lower_idx = (i==WINDOW_SIZE? WINDOW_SIZE-1 : i);
        //         const double lower_ts = Headers[lower_idx].stamp.toSec();
        //         const double upper_ts = Headers[lower_idx+1].stamp.toSec();

        //         const double ts_ratio = (upper_ts-obs_local_ts) / (upper_ts-lower_ts);
        //         GnssPsrDoppFactor *gnss_factor = new GnssPsrDoppFactor(curr_obs[j], 
        //             curr_ephem[j], latest_gnss_iono_params, ts_ratio);
        //         problem.AddResidualBlock(gnss_factor, NULL, para_Pose[lower_idx], 
        //             para_SpeedBias[lower_idx], para_Pose[lower_idx+1], para_SpeedBias[lower_idx+1],
        //             para_rcv_dt+i*4+sys_idx, para_rcv_ddt+i, para_yaw_enu_local, para_anc_ecef);
        //     }
        // }

        // build relationship between rcv_dt and rcv_ddt
        // for (size_t k = 0; k < 4; ++k)
        // {
        //     for (uint32_t i = 0; i < WINDOW_SIZE; ++i)
        //     {
        //         const double gnss_dt = Headers[i+1].stamp.toSec() - Headers[i].stamp.toSec();
        //         DtDdtFactor *dt_ddt_factor = new DtDdtFactor(gnss_dt);
        //         problem.AddResidualBlock(dt_ddt_factor, NULL, para_rcv_dt+i*4+k, 
        //             para_rcv_dt+(i+1)*4+k, para_rcv_ddt+i, para_rcv_ddt+i+1);
        //     }
        // }

        // add rcv_ddt smooth factor
        // for (int i = 0; i < WINDOW_SIZE; ++i)
        // {
        //     DdtSmoothFactor *ddt_smooth_factor = new DdtSmoothFactor(GNSS_DDT_WEIGHT);
        //     problem.AddResidualBlock(ddt_smooth_factor, NULL, para_rcv_ddt+i, para_rcv_ddt+i+1);
        // }
    // }

    // int f_m_cnt = 0;
    // int feature_index = -1;
    // for (auto &it_per_id : f_manager.feature)
    // {
    //     it_per_id.used_num = it_per_id.feature_per_frame.size();
    //     if (!(it_per_id.used_num >= 2 && it_per_id.start_frame < WINDOW_SIZE - 2))
    //         continue;
 
    //     ++feature_index;

    //     int imu_i = it_per_id.start_frame, imu_j = imu_i - 1;
        
    //     Vector3d pts_i = it_per_id.feature_per_frame[0].point;

    //     for (auto &it_per_frame : it_per_id.feature_per_frame)
    //     {
    //         imu_j++;
    //         if (imu_i == imu_j)
    //         {
    //             continue;
    //         }
    //         Vector3d pts_j = it_per_frame.point;
    //         if (ESTIMATE_TD)
    //         {
    //                 ProjectionTdFactor *f_td = new ProjectionTdFactor(pts_i, pts_j, 
    //                     it_per_id.feature_per_frame[0].velocity, it_per_frame.velocity,
    //                     it_per_id.feature_per_frame[0].cur_td, it_per_frame.cur_td);
    //                 problem.AddResidualBlock(f_td, loss_function, para_Pose[imu_i], para_Pose[imu_j], para_Ex_Pose[0], para_Feature[feature_index], para_Td[0]);
    //         }
    //         else
    //         {
    //             ProjectionFactor *f = new ProjectionFactor(pts_i, pts_j);
    //             problem.AddResidualBlock(f, loss_function, para_Pose[imu_i], para_Pose[imu_j], para_Ex_Pose[0], para_Feature[feature_index]);
    //         }
    //         f_m_cnt++;
    //     }
    // }

    // ROS_DEBUG("visual measurement count: %d", f_m_cnt);
    // ROS_DEBUG("prepare for ceres: %f", t_prepare.toc());

    // ceres::Solver::Options options;
    // options.linear_solver_type = ceres::DENSE_SCHUR;
    // //options.num_threads = 2;
    // options.trust_region_strategy_type = ceres::DOGLEG;
    // options.max_num_iterations = NUM_ITERATIONS;
    // //options.use_explicit_schur_complement = true;
    // // options.minimizer_progress_to_stdout = true;
    // options.use_nonmonotonic_steps = true;
    // if (marginalization_flag == MARGIN_OLD)
    //     options.max_solver_time_in_seconds = SOLVER_TIME * 4.0 / 5.0;
    // else
    //     options.max_solver_time_in_seconds = SOLVER_TIME;
    // TicToc t_solver;
    // ceres::Solver::Summary summary;
    // ceres::Solve(options, &problem, &summary);
    // // cout << summary.BriefReport() << endl;
    // // cout << summary.FullReport() << endl;
    // ROS_DEBUG("Iterations : %d", static_cast<int>(summary.iterations.size()));
    // ROS_DEBUG("solver costs: %f", t_solver.toc());

    while(para_yaw_enu_local[0] > M_PI)   para_yaw_enu_local[0] -= 2.0*M_PI;
    while(para_yaw_enu_local[0] < -M_PI)  para_yaw_enu_local[0] += 2.0*M_PI;
    // std::cout << "yaw is " << para_yaw_enu_local[0]*180/M_PI << std::endl;

    double2vector();

    TicToc t_whole_marginalization;
    if (marginalization_flag == MARGIN_OLD)
    {
        MarginalizationInfo *marginalization_info = new MarginalizationInfo();
        vector2double();

        if (last_marginalization_info)
        {
            vector<int> drop_set;
            for (int i = 0; i < static_cast<int>(last_marginalization_parameter_blocks.size()); i++)
            {
                if (last_marginalization_parameter_blocks[i] == para_Pose[0] ||
                    last_marginalization_parameter_blocks[i] == para_SpeedBias[0])
                    drop_set.push_back(i);
            }
            // construct new marginlization_factor
            MarginalizationFactor *marginalization_factor = new MarginalizationFactor(
                last_marginalization_info);
            ResidualBlockInfo *residual_block_info = new ResidualBlockInfo(
                marginalization_factor, NULL, last_marginalization_parameter_blocks, drop_set);
            marginalization_info->addResidualBlockInfo(residual_block_info);
        }
        else
        {
            std::vector<double> anchor_value;
            for (uint32_t k = 0; k < 7; ++k)
                anchor_value.push_back(para_Pose[0][k]);
            PoseAnchorFactor *pose_anchor_factor = new PoseAnchorFactor(anchor_value);
            ResidualBlockInfo *residual_block_info = new ResidualBlockInfo(pose_anchor_factor, 
                NULL, vector<double *>{para_Pose[0]}, vector<int>{0});
            marginalization_info->addResidualBlockInfo(residual_block_info);
        }

        {
            if (pre_integrations[1]->sum_dt < 10.0)
            {
                IMUFactor* imu_factor = new IMUFactor(pre_integrations[1]);
                ResidualBlockInfo *residual_block_info = new ResidualBlockInfo(imu_factor, NULL,
                                                                           vector<double *>{para_Pose[0], para_SpeedBias[0], para_Pose[1], para_SpeedBias[1]},
                                                                           vector<int>{0, 1});
                marginalization_info->addResidualBlockInfo(residual_block_info);
            }
        }

        if (gnss_ready)
        {
            for (uint32_t j = 0; j < gnss_meas_buf[0].size(); ++j)
            {
                const uint32_t sys = satsys(gnss_meas_buf[0][j]->sat, NULL);
                const uint32_t sys_idx = gnss_comm::sys2idx.at(sys);

                const double obs_local_ts = time2sec(gnss_meas_buf[0][j]->time) - diff_t_gnss_local;
                const double lower_ts = Headers[0].stamp.toSec();
                const double upper_ts = Headers[1].stamp.toSec();
                const double ts_ratio = (upper_ts-obs_local_ts) / (upper_ts-lower_ts);

                GnssPsrDoppFactor *gnss_factor = new GnssPsrDoppFactor(gnss_meas_buf[0][j], 
                    gnss_ephem_buf[0][j], latest_gnss_iono_params, ts_ratio);
                ResidualBlockInfo *psr_dopp_residual_block_info = new ResidualBlockInfo(gnss_factor, NULL,
                    vector<double *>{para_Pose[0], para_SpeedBias[0], para_Pose[1], 
                        para_SpeedBias[1],para_rcv_dt+sys_idx, para_rcv_ddt, 
                        para_yaw_enu_local, para_anc_ecef},
                    vector<int>{0, 1, 4, 5});
                marginalization_info->addResidualBlockInfo(psr_dopp_residual_block_info);
            }

            const double gnss_dt = Headers[1].stamp.toSec() - Headers[0].stamp.toSec();
            for (size_t k = 0; k < 4; ++k)
            {
                DtDdtFactor *dt_ddt_factor = new DtDdtFactor(gnss_dt);
                ResidualBlockInfo *dt_ddt_residual_block_info = new ResidualBlockInfo(dt_ddt_factor, NULL,
                    vector<double *>{para_rcv_dt+k, para_rcv_dt+4+k, para_rcv_ddt, para_rcv_ddt+1}, 
                    vector<int>{0, 2});
                marginalization_info->addResidualBlockInfo(dt_ddt_residual_block_info);
            }

            // margin rcv_ddt smooth factor
            DdtSmoothFactor *ddt_smooth_factor = new DdtSmoothFactor(GNSS_DDT_WEIGHT);
            ResidualBlockInfo *ddt_smooth_residual_block_info = new ResidualBlockInfo(ddt_smooth_factor, NULL,
                    vector<double *>{para_rcv_ddt, para_rcv_ddt+1}, vector<int>{0});
            marginalization_info->addResidualBlockInfo(ddt_smooth_residual_block_info);
        }

        {
            int feature_index = -1;
            for (auto &it_per_id : f_manager.feature)
            {
                it_per_id.used_num = it_per_id.feature_per_frame.size();
                if (!(it_per_id.used_num >= 2 && it_per_id.start_frame < WINDOW_SIZE - 2))
                    continue;

                ++feature_index;

                int imu_i = it_per_id.start_frame, imu_j = imu_i - 1;
                if (imu_i != 0)
                    continue;

                Vector3d pts_i = it_per_id.feature_per_frame[0].point;

                for (auto &it_per_frame : it_per_id.feature_per_frame)
                {
                    imu_j++;
                    if (imu_i == imu_j)
                        continue;

                    Vector3d pts_j = it_per_frame.point;
                    if (ESTIMATE_TD)
                    {
                        ProjectionTdFactor *f_td = new ProjectionTdFactor(pts_i, pts_j, 
                            it_per_id.feature_per_frame[0].velocity, it_per_frame.velocity,
                            it_per_id.feature_per_frame[0].cur_td, it_per_frame.cur_td);
                        ResidualBlockInfo *residual_block_info = new ResidualBlockInfo(f_td, 
                            loss_function, vector<double *>{para_Pose[imu_i], para_Pose[imu_j], 
                                para_Ex_Pose[0], para_Feature[feature_index], para_Td[0]},
                            vector<int>{0, 3});
                        marginalization_info->addResidualBlockInfo(residual_block_info);
                    }
                    else
                    {
                        ProjectionFactor *f = new ProjectionFactor(pts_i, pts_j);
                        ResidualBlockInfo *residual_block_info = new ResidualBlockInfo(f, 
                            loss_function, vector<double *>{para_Pose[imu_i], para_Pose[imu_j], 
                                para_Ex_Pose[0], para_Feature[feature_index]},
                            vector<int>{0, 3});
                        marginalization_info->addResidualBlockInfo(residual_block_info);
                    }
                }
            }
        }

        TicToc t_pre_margin;
        marginalization_info->preMarginalize();
        ROS_DEBUG("pre marginalization %f ms", t_pre_margin.toc());
        
        TicToc t_margin;
        marginalization_info->marginalize();
        ROS_DEBUG("marginalization %f ms", t_margin.toc());

        std::unordered_map<long, double *> addr_shift;
        for (int i = 1; i <= WINDOW_SIZE; i++)
        {
            addr_shift[reinterpret_cast<long>(para_Pose[i])] = para_Pose[i - 1];
            addr_shift[reinterpret_cast<long>(para_SpeedBias[i])] = para_SpeedBias[i - 1];
            for (uint32_t k = 0; k < 4; ++k)
                addr_shift[reinterpret_cast<long>(para_rcv_dt+i*4+k)] = para_rcv_dt+(i-1)*4+k;
            addr_shift[reinterpret_cast<long>(para_rcv_ddt+i)] = para_rcv_ddt+i-1;
        }
        for (int i = 0; i < NUM_OF_CAM; i++)
            addr_shift[reinterpret_cast<long>(para_Ex_Pose[i])] = para_Ex_Pose[i];
        if (ESTIMATE_TD)
        {
            addr_shift[reinterpret_cast<long>(para_Td[0])] = para_Td[0];
        }
        addr_shift[reinterpret_cast<long>(para_yaw_enu_local)] = para_yaw_enu_local;
        addr_shift[reinterpret_cast<long>(para_anc_ecef)] = para_anc_ecef;
        vector<double *> parameter_blocks = marginalization_info->getParameterBlocks(addr_shift);

        if (last_marginalization_info)
            delete last_marginalization_info;
        last_marginalization_info = marginalization_info;
        last_marginalization_parameter_blocks = parameter_blocks;
        
    }
    else
    {
        if (last_marginalization_info &&
            std::count(std::begin(last_marginalization_parameter_blocks), std::end(last_marginalization_parameter_blocks), para_Pose[WINDOW_SIZE - 1]))
        {

            MarginalizationInfo *marginalization_info = new MarginalizationInfo();
            vector2double();
            if (last_marginalization_info)
            {
                vector<int> drop_set;
                for (int i = 0; i < static_cast<int>(last_marginalization_parameter_blocks.size()); i++)
                {
                    ROS_ASSERT(last_marginalization_parameter_blocks[i] != para_SpeedBias[WINDOW_SIZE - 1]);
                    if (last_marginalization_parameter_blocks[i] == para_Pose[WINDOW_SIZE - 1])
                        drop_set.push_back(i);
                }
                // construct new marginlization_factor
                MarginalizationFactor *marginalization_factor = new MarginalizationFactor(last_marginalization_info);
                ResidualBlockInfo *residual_block_info = new ResidualBlockInfo(marginalization_factor, NULL,
                                                                               last_marginalization_parameter_blocks,
                                                                               drop_set);

                marginalization_info->addResidualBlockInfo(residual_block_info);
            }

            TicToc t_pre_margin;
            ROS_DEBUG("begin marginalization");
            marginalization_info->preMarginalize();
            ROS_DEBUG("end pre marginalization, %f ms", t_pre_margin.toc());

            TicToc t_margin;
            ROS_DEBUG("begin marginalization");
            marginalization_info->marginalize();
            ROS_DEBUG("end marginalization, %f ms", t_margin.toc());
            
            std::unordered_map<long, double *> addr_shift;
            for (int i = 0; i <= WINDOW_SIZE; i++)
            {
                if (i == WINDOW_SIZE - 1)
                    continue;
                else if (i == WINDOW_SIZE)
                {
                    addr_shift[reinterpret_cast<long>(para_Pose[i])] = para_Pose[i - 1];
                    addr_shift[reinterpret_cast<long>(para_SpeedBias[i])] = para_SpeedBias[i - 1];
                    for (uint32_t k = 0; k < 4; ++k)
                        addr_shift[reinterpret_cast<long>(para_rcv_dt+i*4+k)] = para_rcv_dt+(i-1)*4+k;
                    addr_shift[reinterpret_cast<long>(para_rcv_ddt+i)] = para_rcv_ddt+i-1;
                }
                else
                {
                    addr_shift[reinterpret_cast<long>(para_Pose[i])] = para_Pose[i];
                    addr_shift[reinterpret_cast<long>(para_SpeedBias[i])] = para_SpeedBias[i];
                    for (uint32_t k = 0; k < 4; ++k)
                        addr_shift[reinterpret_cast<long>(para_rcv_dt+i*4+k)] = para_rcv_dt+i*4+k;
                    addr_shift[reinterpret_cast<long>(para_rcv_ddt+i)] = para_rcv_ddt+i;
                }
            }
            for (int i = 0; i < NUM_OF_CAM; i++)
                addr_shift[reinterpret_cast<long>(para_Ex_Pose[i])] = para_Ex_Pose[i];
            if (ESTIMATE_TD)
            {
                addr_shift[reinterpret_cast<long>(para_Td[0])] = para_Td[0];
            }
            addr_shift[reinterpret_cast<long>(para_yaw_enu_local)] = para_yaw_enu_local;
            addr_shift[reinterpret_cast<long>(para_anc_ecef)] = para_anc_ecef;
            vector<double *> parameter_blocks = marginalization_info->getParameterBlocks(addr_shift);
            if (last_marginalization_info)
                delete last_marginalization_info;
            last_marginalization_info = marginalization_info;
            last_marginalization_parameter_blocks = parameter_blocks;
            
        }
    }
    ROS_DEBUG("whole marginalization costs: %f", t_whole_marginalization.toc());
    
    ROS_DEBUG("whole time for ceres: %f", t_whole.toc());
}
*/

bool GNSSVIAlign()
{
    // if (solver_flag == INITIAL)     // visual-inertial not initialized
    //     return false;
    
    readVINSresult(VIOpath);
    readGNSSresult(GNSSpath);
    if (gnss_ready)                 // GNSS-VI already initialized
        return true;
    
    // for (uint32_t i = 0; i < (WINDOW_SIZE+1); ++i)
    // {
    //     if (gnss_meas_buf[i].empty() || gnss_meas_buf[i].size() < 10)
    //         return false;
    // }

    // // check horizontal velocity excitation
    // Eigen::Vector2d avg_hor_vel(0.0, 0.0);
    // for (uint32_t i = 0; i < (WINDOW_SIZE+1); ++i)
    //     avg_hor_vel += Vs[i].head<2>().cwiseAbs();
    // avg_hor_vel /= (WINDOW_SIZE+1);
    // if (avg_hor_vel.norm() < 0.3)
    // {
    //     std::cerr << "velocity excitation not enough for GNSS-VI alignment.\n";
    //     return false;
    // }

    // std::vector<std::vector<ObsPtr>> curr_gnss_meas_buf;
    // std::vector<std::vector<EphemBasePtr>> curr_gnss_ephem_buf;
    // for (uint32_t i = 0; i < (WINDOW_SIZE+1); ++i)
    // {
    //     curr_gnss_meas_buf.push_back(gnss_meas_buf[i]);
    //     curr_gnss_ephem_buf.push_back(gnss_ephem_buf[i]);
    // }

    
    // vector<vector<double>> gpspos;
    // vector<vector<measPtr>> meass;
    // vector<vector<ephPtr>> ephs;
    // vector<vector<ionoPtr>> ionos;
    for (int i = 0 ;i < OriGPSPositionMap.size(); i++) {
        vector<ObsPtr> vec_measptr;
        vector<EphemBasePtr> vec_ephptr;
        double vec_ionptr = 0.0;

        gpsresult.push_back(vec_measptr);
        gpsresult_buf.push_back(vec_ephptr);
        gpsresult_buf_.push_back(vec_ionptr);
    }
    std::printf("%d %d %d %d\n", OriGPSPositionMap.size(), gpsresult.size(), gpsresult_buf.size(), gpsresult_buf_.size());

    GNSSVIInitializer gnss_vi_initializer (gpsresult, gpsresult_buf, gpsresult_buf_);
    std::printf("gnss vi initialized\n");

    // 1. get a rough global location
    Eigen::Matrix<double, 7, 1> rough_xyzt;
    rough_xyzt.setZero();

    // if (!gnss_vi_initializer.coarse_localization(rough_xyzt))
    // {
        // std::cerr << "Fail to obtain a coarse location.\n";
        // return false;
    // }

    // 2. perform yaw alignment
    std::printf("2. perform yaw alignment %d %d\n", WINDOW_SIZE, V.size());
    std::vector<Eigen::Vector3d> local_vs;
    for (uint32_t i = 0; i < (WINDOW_SIZE+1); ++i)
        local_vs.push_back(V[i]);
    Eigen::Vector3d rough_anchor_ecef = rough_xyzt.head<3>();
    double aligned_yaw = 0;
    double aligned_rcv_ddt = 0;
    if (!gnss_vi_initializer.yaw_alignment(local_vs, rough_anchor_ecef, aligned_yaw, aligned_rcv_ddt))
    {
        std::cerr << "Fail to align ENU and local frames.\n";
        return false;
    }
    std::cout << "aligned_yaw is " << aligned_yaw*180.0/M_PI << '\n';

    // // 3. perform anchor refinement
    // std::vector<Eigen::Vector3d> local_ps;
    // for (uint32_t i = 0; i < (WINDOW_SIZE+1); ++i)
    //     local_ps.push_back(Ps[i]);
    // Eigen::Matrix<double, 7, 1> refined_xyzt;
    // refined_xyzt.setZero();
    // // if (!gnss_vi_initializer.anchor_refinement(local_ps, aligned_yaw, 
    // //     aligned_rcv_ddt, rough_xyzt, refined_xyzt))
    // // {
    // //     std::cerr << "Fail to refine anchor point.\n";
    // //     return false;
    // // }
    // // std::cout << "refined anchor point is " << std::setprecision(20) 
    // //           << refined_xyzt.head<3>().transpose() << '\n';

    // // restore GNSS states
    // uint32_t one_observed_sys = static_cast<uint32_t>(-1);
    // for (uint32_t k = 0; k < 4; ++k)
    // {
    //     if (rough_xyzt(k+3) != 0)
    //     {
    //         one_observed_sys = k;
    //         break;
    //     }
    // }
    // for (uint32_t i = 0; i < (WINDOW_SIZE+1); ++i)
    // {
    //     para_rcv_ddt[i] = aligned_rcv_ddt;
    //     for (uint32_t k = 0; k < 4; ++k)
    //     {
    //         if (rough_xyzt(k+3) == 0)
    //             para_rcv_dt[i*4+k] = refined_xyzt(3+one_observed_sys) + aligned_rcv_ddt * i;
    //         else
    //             para_rcv_dt[i*4+k] = refined_xyzt(3+k) + aligned_rcv_ddt * i;
    //     }
    // }
    // anc_ecef = refined_xyzt.head<3>();
    R_ecef_enu = ecef2rotation(rough_anchor_ecef);
    anc_ecef = rough_anchor_ecef;
    yaw_enu_local = aligned_yaw;

    return true;
}

void updateGNSSStatistics()
{
    R_enu_local = Eigen::AngleAxisd(yaw_enu_local, Eigen::Vector3d::UnitZ());
    enu_pos = R_enu_local * P[WINDOW_SIZE];
    enu_vel = R_enu_local * V[WINDOW_SIZE];
    enu_ypr = Utility::R2ypr(R_enu_local*Q[WINDOW_SIZE]);
    ecef_pos = R_ecef_enu * enu_pos;
    std::cout<<"updateGNSSStatistics"<<std::endl;
}

int main(int argc, char **argv)
{
            
            std::vector<int> result;
            std::vector<double> IOtimeresult;
            readIOresult(IOpath, result);
            readIOtimeresult(IOtimepath, IOtimeresult);
            cout<<result.size()<<endl;
            cout<<IOtimeresult.size()<<endl;
            bool aligned = false;
            aligned = GNSSVIAlign();
            std::cout<<"main - gnss vi align done"<<std::endl;
            if (solver_flag == NON_LINEAR)
            {
                TicToc t_tri;
                f_manager.triangulate(&(P[WINDOW_SIZE]), tic, ric);
                ROS_DEBUG("triangulation costs %f", t_tri.toc());
                double2vector();//
                // optimization();
            }
            updateGNSSStatistics();
            printf("\nglobal optimization\n");
            TicToc globalOptimizationTime;
            ceres::Problem problem;
            ceres::Solver::Options options;
            options.linear_solver_type = ceres::SPARSE_NORMAL_CHOLESKY;
            options.max_num_iterations = 500;
            // options.num_threads = 8;
            printf("\nglobal optimization\n");
            ceres::Solver::Summary summary;
            ceres::LossFunction *loss_function;
            loss_function = new ceres::HuberLoss(1.0);
            printf("\nglobal optimization\n");
            ceres::LocalParameterization* local_parameterization = new ceres::QuaternionParameterization();
            std::vector<ceres::ResidualBlockId> resdBlks_vins, resdBlks_gps;
            std::vector<double *> paramBlks_vins, paramBlks_gps;
            printf("\nglobal optimization\n");
            localPoseMap =OrilocalPoseMap;
            printf("\nglobal optimization\n");
            int length = localPoseMap.size();
            printf("\nglobal optimization\n");
            cout<<"length:"<<length;
            // w^t_i   w^q_i
            double t_array[length][3];
            double q_array[length][4];
            double k[length];
            map<double, vector<double>>::iterator iter;
            localPoseMap =OrilocalPoseMap;
            iter = localPoseMap.begin();
            printf("\nglobal optimization %d %d\n", localPoseMap.size(), OrilocalPoseMap.size());
            // globalPoseMap =OriglobalPoseMap;
            // iter = globalPoseMap.begin();
            // printf("\nglobal optimization %d %d\n", globalPoseMap.size(), OriglobalPoseMap.size());
            int window_length = 300;
            int window_start = 0;
            printf("\nglobal optimization\n");
            // if (length > 300 && isSlidingWindow)
            // if (length > window_length && isSlidingWindow)
            // { 
               
            //     printf("\n isSlidingWindow\n"); 
            //     window_start  = length - window_length - 1;
            //     // for ( int i = 0; i < window_start; i++,iter++){}
                
            // }
            for (int i = window_start; i < length; i++, iter++)
            {
                printf("\nglobal optimization1111111\n");
                t_array[i][0] = iter->second[0];
                t_array[i][1] = iter->second[1];
                t_array[i][2] = iter->second[2];
                q_array[i][0] = iter->second[3];
                q_array[i][1] = iter->second[4];
                q_array[i][2] = iter->second[5];
                q_array[i][3] = iter->second[6];
                problem.AddParameterBlock(q_array[i], 4, local_parameterization);
                problem.AddParameterBlock(t_array[i], 3);
                //problem.AddParameterBlock(k[i],1)
                printf("\nglobal optimization2222222\n");
            }
            map<double, vector<double>>::iterator iterVIO, iterVIOa, iterVIONext, iterGPS, iterGNSS;
            int resultlength = result.size();
            cout<<" result:"<<resultlength;
            vector<int>::iterator iterIO = result.begin();
            iterVIO = localPoseMap.begin();
            iterVIOa = localPoseMap.begin();
            std::printf("size check %d %d %d\n", result.size(), localPoseMap.size(), OriGPSPositionMap.size()); // std::cin.get();
            // if (length > 300 && isSlidingWindow)
            // { 
            //     // for ( int i = 0; i < window_start; i++,iterVIO++){}
            //     printf("\n isSlidingWindow\n");
            // }
            // for (int i = window_start; iterVIO != localPoseMap.end(), iterIO != result.end() ; iterVIO++, iterIO++, i++)
            // for (int i = window_start; iterVIO != localPoseMap.end() && iterIO != result.end();  iterIO++, iterVIO++, i++)
            double t = iterVIO->first;
            GPSPositionMap = OriGPSPositionMap;
            GNSSPositionMap = OriGPSPositionMap;
            for (int i = window_start; iterVIO != localPoseMap.end();  iterVIO++, i++)
            {
                //vio factor
                double IO = result[0];
                for (int j = 0; j < IOtimeresult.size(); j++) {
                    if (iterVIO->first < IOtimeresult[j]) { 
                        std::printf("IO flag @ %.1f - %.1f - %d\n", iterVIO->first, IOtimeresult[j], IO);
                        break; 
                    }
                    IO = result[j] * 0.8 + 0.1;
                    // std::printf("%d/%d %.1f %.1f\n", j, IOtimeresult.size(), iterVIO->first, IOtimeresult[j]);
                }
                //int IO = result[floor((iterVIO->first - localPoseMap.begin()->first)/10.0)];
                printf("vio factor, %d (%.1f - %.1f)\n", window_start, localPoseMap.begin()->first, std::prev(localPoseMap.end())->first);
                iterVIONext = iterVIO;
                iterVIONext++;
                if(iterVIONext != localPoseMap.end())
                {
                    printf("\nviofgo ============= %.1f (%.1f - %.1f, %d)\n", iterVIO->first, localPoseMap.begin()->first, std::prev(localPoseMap.end())->first, localPoseMap.size());
                    Eigen::Matrix4d wTi = Eigen::Matrix4d::Identity();
                    Eigen::Matrix4d wTj = Eigen::Matrix4d::Identity();
                    wTi.block<3, 3>(0, 0) = Eigen::Quaterniond(iterVIO->second[3], iterVIO->second[4], 
                                                               iterVIO->second[5], iterVIO->second[6]).toRotationMatrix();
                    cout<<"........"<<endl;
                    wTi.block<3, 1>(0, 3) = Eigen::Vector3d(iterVIO->second[0], iterVIO->second[1], iterVIO->second[2]);
                    wTj.block<3, 3>(0, 0) = Eigen::Quaterniond(iterVIONext->second[3], iterVIONext->second[4], 
                                                               iterVIONext->second[5], iterVIONext->second[6]).toRotationMatrix();
                    wTj.block<3, 1>(0, 3) = Eigen::Vector3d(iterVIONext->second[0], iterVIONext->second[1], iterVIONext->second[2]);
                    Eigen::Matrix4d iTj = wTi.inverse() * wTj;
                    Eigen::Quaterniond iQj;
                    cout<<"........"<<endl;
                    iQj = iTj.block<3, 3>(0, 0);
                    cout<<"........"<<endl;
                    Eigen::Vector3d iPj = iTj.block<3, 1>(0, 3);
                    cout<<"........"<<endl;

                    cout<<"........"<<endl;
                    printf("i:%d, result size:%d", i, result.size());
                    cout<<"IO:"<<IO<<endl;
                    double IOt = 1 / (IO);
                    double IOq = 0.1 / (IO); 
                    cout<<"IOt:"<<IOt<<" IOq:"<<IOq<<endl;
                    cout << "## " << result[i] << "  " << i << endl;

                    if ( iPj.norm() > 10)
                    {
                        iPj = Eigen::Vector3d(0,0,0);
                        iQj = Eigen::Quaterniond(1,0,0,0);
                    }
                    ceres::CostFunction* vio_function = RelativeRTError::Create(iPj.x(), iPj.y(), iPj.z(),
                                                                                iQj.w(), iQj.x(), iQj.y(), iQj.z(),
                                                                                // 0.1, 0.01);
                                                                                IOt, IOq);
                    ceres::ResidualBlockId block_id = problem.AddResidualBlock(vio_function, NULL, q_array[i], t_array[i], q_array[i+1], t_array[i+1]);
                    // resdBlks_vins.push_back(block_id);
                    // resdBlks.push_back(block_id);
                    resdBlks_vins.push_back(block_id);
                    paramBlks_vins.push_back(t_array[i]);
                }
                //gps factor
                printf("gps factor, %d, %.0f (%.1f - %.1f)\n", GPSPositionMap.size(), 
                    (std::prev(GPSPositionMap.end())->first - GPSPositionMap.begin()->first +1.0),
                    GPSPositionMap.begin()->first, std::prev(GPSPositionMap.end())->first);
                
                iterGPS = GPSPositionMap.lower_bound(t);
                std::printf("gps ptr (%d) dt: %.1f\n", (int)(iterGPS==GPSPositionMap.end()), (iterGPS->first - t));
                // printf("======================================================================= %.3f : %.3f - %.3f\n", iterVIO->first, GPSPositionMap.begin()->first, prev(GPSPositionMap.end())->first);
                if ((iterGPS != GPSPositionMap.end()) && (fabs(iterGPS->first - t) < 0.1))// (iterGPS != GPSPositionMap.end())
                {
                    printf("\ngpsfgo ============= %.1f %.1f (%.1f - %.1f, %d)\n", iterGPS->first, iterGPS->second[3],
                        GPSPositionMap.begin()->first, prev(GPSPositionMap.end())->first, GPSPositionMap.size());
                    ceres::CostFunction* gps_function = TError::Create(iterGPS->second[0], iterGPS->second[1], 
                                                                    //    iterGPS->second[2], (iterGPS->second[3]==0.0 ? 99.0 : iterGPS->second[3]*1e+2));
                                                                       iterGPS->second[2], (iterGPS->second[3]==0.0 ? 99.0 : std::sqrt(iterGPS->second[3])*1e+1) / (1 - IO)); // 1e-5
                    //printf("inverse weight %f \n", iterGPS->second[3]);
                    ceres::ResidualBlockId block_id = problem.AddResidualBlock(gps_function, loss_function, t_array[i]);
                    resdBlks_gps.push_back(block_id);
                    paramBlks_gps.push_back(t_array[i]);
                    // std::cin.get();
                }
            }
            // printf("end global optimization\n");
            //mPoseMap.unlock();
            ceres::Solve(options, &problem, &summary);
            std::cout << summary.FullReport() << "\n";
            std::cout << "success " << summary.IsSolutionUsable() << summary.is_constrained << " residual blks: " << summary.num_residual_blocks << std::endl;
            ofstream loop_path_file(VINS_RESULT_PATH, ios::ate);
            for (int i = 0; i < length; i++) {
            loop_path_file.setf(ios::fixed, ios::floatfield);
            loop_path_file.precision(0);
            loop_path_file << timeMap[i] << " ";
            loop_path_file.precision(5);
            loop_path_file  << t_array[i][0] << " "
                            << t_array[i][1] << " "
                            << t_array[i][2] << " "
                            << q_array[i][0] << " "
                            << q_array[i][1] << " "
                            << q_array[i][2] << " "
                            << q_array[i][3] << endl;
            }
            loop_path_file.close();


            double ta = iterVIOa->first;
            // iterGNSS = GNSSPositionMap.lower_bound(ta);
            
            ofstream gnss_global_path_file(GNSS_RESULT_PATH, ios::ate);
            ofstream lla_global_path_file(GNSSLLA_RESULT_PATH, ios::ate);
            ofstream enu_global_path_file(GNSSENU_RESULT_PATH, ios::ate);
            int count = 0;
            // if ((iterGNSS != GPSPositionMap.end()) && (fabs(iterGNSS->first - ta) < 0.1))// 
            for (iterGNSS = GNSSPositionMap.begin(); iterGNSS != GNSSPositionMap.end();iterGNSS++)
                {
                    std::cin.get();
                    printf("\ngpsglobal ============= %.1f %.1f %.1f \n", iterGNSS->second[0],iterGNSS->second[1], iterGNSS->second[2]);
                    
                    Eigen::Vector3d gps;
                    R_enu_local = Eigen::AngleAxisd(yaw_enu_local, Eigen::Vector3d::UnitZ());
                    gps << iterGNSS->second[0], iterGNSS->second[1],iterGNSS->second[2];
                    enu_pos = R_enu_local * gps;
                    std::cout << "R_enu_local:\n" << R_enu_local << endl;
                    std::cout << "enu_pos:\n" << enu_pos << endl;
                    
                    Eigen::Vector3d ref_gps;
                    // ref_gps << -2418216.80, 5385827.35, 2405592.53; //20221
                    // ref_gps << -2418214.014, 5385823.43, 2405596.833; //20221020180335
                    ref_gps << -2418233.60, 5385826.39, 2405572.61; // 1st gps
                    // ref_gps << -2418200.537, 5385820.32, 2405619.124; //20230127181059
                    ecef_pos = ecef2rotation(ref_gps)* enu_pos + ref_gps;
                    std::cout << "ecef_pos:\n" << ecef_pos << endl;
                    Eigen::Vector3d lla_pos = ecef2geo(ecef_pos); 
                    std::cout << "lla_pos:\n" << lla_pos << endl;
                    const Eigen::Vector3d anc_lla = ecef2geo(anc_ecef);
                    std::cout << "anc_lla:\n" << anc_lla << endl;
                    Eigen::Matrix3d R_s_c;
                    R_s_c <<  0,  0,  1,
                             -1,  0,  0,
                              0, -1,  0;
                    
                    ric[count] = Quaterniond(para_Ex_Pose[count][6],
                                        para_Ex_Pose[count][3],
                                        para_Ex_Pose[count][4],
                                        para_Ex_Pose[count][5]).toRotationMatrix();
                    
                    Eigen::Matrix3d R_w_sensor = Q[count] * ric[count] * R_s_c.transpose();
                    std::cout << "Q[count]:\n" << Q[count].x() << Q[count].y() << Q[count].z() << Q[count].w() << endl;
                    std::cout << "ric[count]:\n" << R_w_sensor << endl;
                    std::cout << "R_w_sensor:\n" << R_w_sensor << endl;
                    Eigen::Quaterniond enu_ori(R_enu_local * R_w_sensor);
                    std::cout << "enu_ori:\n" << enu_ori.x() << " " << enu_ori.y() << " " << enu_ori.z() << " " << enu_ori.w() << endl;
                    gnss_global_path_file.setf(ios::fixed, ios::floatfield);
                    gnss_global_path_file.precision(0);
                    gnss_global_path_file << timeMap[count] << " ";
                    gnss_global_path_file.precision(5);
                    gnss_global_path_file  << enu_pos.x() << " "
                                            << enu_pos.y() << " "
                                            << enu_pos.z() << " "
                                            << enu_ori.x() << " "
                                            << enu_ori.y() << " "
                                            << enu_ori.z() << " "
                                            << enu_ori.w() << endl;

                    lla_global_path_file.setf(ios::fixed, ios::floatfield);
                    lla_global_path_file.precision(0);
                    lla_global_path_file << timeMap[count] << " ";
                    lla_global_path_file.precision(9);
                    lla_global_path_file  << lla_pos.x() << " "
                                            << lla_pos.y() << " "
                                            << lla_pos.z() << " "
                                            << enu_ori.x() << " "
                                            << enu_ori.y() << " "
                                            << enu_ori.z() << " "
                                            << enu_ori.w() << endl;

                    ecef_pos = geo2ecef(lla_pos);
                    ecef_pos.x() -= (-2418191.143); 
                    ecef_pos.y() -= 5385827.079; 
                    ecef_pos.z() -= 2405613.484;

                    lla_pos << -2418191.143,	5385827.079	,2405613.484;
                    enu_pos = ecef2enu(lla_pos, ecef_pos);

                    enu_global_path_file.setf(ios::fixed, ios::floatfield);
                    enu_global_path_file.precision(0);
                    enu_global_path_file << timeMap[count] << " ";
                    enu_global_path_file.precision(9);
                    enu_global_path_file  << enu_pos.x() << " "
                                            << enu_pos.y() << " "
                                            << enu_pos.z() << " "
                                            << enu_ori.x() << " "
                                            << enu_ori.y() << " "
                                            << enu_ori.z() << " "
                                            << enu_ori.w() << endl;
                    
                    count++; 
                }
            gnss_global_path_file.close();
            lla_global_path_file.close();


            ceres::Problem::EvaluateOptions opts_eval;
            opts_eval.apply_loss_function = false;
            opts_eval.residual_blocks = resdBlks_gps;
            opts_eval.parameter_blocks = paramBlks_gps;
            double total_cost = 0.0;
            std::vector<double> residuals;
            problem.Evaluate(opts_eval, &total_cost, &residuals, nullptr, nullptr);
            std::printf("cost %d-%d-%d: %.4e\n", resdBlks_gps.size(), paramBlks_gps.size(), residuals.size(), total_cost);
            // for (int i = 0; i < residuals.size(); i++) {
            //     std::printf("%4updateGlobalPathd %-10.3e     ", i, residuals[i]);
            //     if ((i+1)%12 == 0 || i==residuals.size()-1)
            //         std::printf("\n");
            // }
            
            opts_eval.residual_blocks = resdBlks_vins;
            opts_eval.parameter_blocks = paramBlks_vins;
            total_cost = 0.0; residuals.clear(); residuals.clear(); 
            opts_eval.residual_blocks.clear(); opts_eval.parameter_blocks.clear();
            problem.Evaluate(opts_eval, &total_cost, &residuals, nullptr, nullptr);
            std::printf("cost %d-%d-%d: %.4e\n", resdBlks_vins.size(), paramBlks_vins.size(), residuals.size(), total_cost);
            // for (int i = 0; i < residuals.size(); i++) {
            //     std::printf("%4d %-10.3e     ", i, residuals[i]);
            //     if ((i+1)%12 == 0 || i==residuals.size()-1)
            //         std::printf("\n");
            // }

            // update global pose
            //mPoseMap.lock();
            // iter = globalPoseMap.begin();
            // if (length > 300)
            // { 
            //     for (int i = 0; i < window_start; i++,iter++){}
            // }
            // for (int i = window_start; i < length; i++, iter++)
            // {
            // 	vector<double> globalPose{t_array[i][0], t_array[i][1], t_array[i][2],
            // 							  q_array[i][0], q_array[i][1], q_array[i][2], q_array[i][3]};
            // 	iter->second = globalPose;
            // 	if(i == length - 1)
            // 	{
            // 	    Eigen::Matrix4d WVIO_T_body = Eigen::Matrix4d::Identity();
            // 	    Eigen::Matrix4d WGPS_T_body = Eigen::Matrix4d::Identity();
            // 	    double t = iter->first;
            // 	    WVIO_T_body.block<3, 3>(0, 0) = Eigen::Quaterniond(localPoseMap[t][3], localPoseMap[t][4], 
            // 	                                                       localPoseMap[t][5], localPoseMap[t][6]).toRotationMatrix();
            // 	    WVIO_T_body.block<3, 1>(0, 3) = Eigen::Vector3d(localPoseMap[t][0], localPoseMap[t][1], localPoseMap[t][2]);
            // 	    WGPS_T_body.block<3, 3>(0, 0) = Eigen::Quaterniond(globalPose[3], globalPose[4], 
            // 	                                                        globalPose[5], globalPose[6]).toRotationMatrix();
            // 	    WGPS_T_body.block<3, 1>(0, 3) = Eigen::Vector3d(globalPose[0], globalPose[1], globalPose[2]);
            // 	    WGPS_T_WVIO = WGPS_T_body * WVIO_T_body.inverse();
            // 	}
            // }
            // //printf("global time %f \n", globalOptimizationTime.toc());
	return 0;
}