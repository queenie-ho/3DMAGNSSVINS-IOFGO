#pragma once

#include <typeinfo>
#include "parameters.h"
#include "feature_manager.h"
#include "utility/utility.h"
// #include "utility/tic_toc.h"
// #include "initial/solve_5pts.h"
// #include "initial/initial_sfm.h"
// #include "initial/initial_alignment.h"
// #include "initial/initial_ex_rotation.h"
#include "gnss_vi_initializer.h"
// #include <std_msgs/Header.h>

#include <ceres/ceres.h>
// #include "factor/imu_factor.h"
// #include "factor/pose_local_parameterization.h"
// #include "factor/projection_factor.h"
// #include "factor/projection_td_factor.h"
// #include "factor/marginalization_factor.h"
// #include "factor/gnss_psr_dopp_factor.hpp"
// #include "factor/gnss_dt_ddt_factor.hpp"
// #include "factor/gnss_dt_anchor_factor.hpp"
// #include "factor/gnss_ddt_smooth_factor.hpp"
// #include "factor/pos_vel_factor.hpp"
// #include "factor/pose_anchor_factor.h"

#include <gnss_comm/gnss_utility.hpp>
#include <gnss_comm/gnss_ros.hpp>
#include <gnss_comm/gnss_spp.hpp>
#include <vector>
#include <map>
#include <iostream>
#include <mutex>
#include <thread>
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Geometry>
#include <ceres/ceres.h>
#include <opencv2/core/core.hpp>
#include <unordered_map>
#include <queue>
#include <opencv2/core/eigen.hpp>
#include <GeographicLib/LocalCartesian.hpp>
using namespace gnss_comm;
using namespace Eigen;
using namespace std;

// const int WINDOW_SIZE = 10;
// const int NUM_OF_F = 1000;
double MIN_PARALLAX;
int ESTIMATE_TD;
// int NUM_OF_CAM ;
// extern int FOCAL_LENGTH;

// enum SIZE_PARAMETERIZATION
// {
//     SIZE_POSE = 7,
//     SIZE_SPEEDBIAS = 9,
//     SIZE_FEATURE = 1
// };
#include <ctime>
#include <cstdlib>
#include <chrono>

class TicToc
{
public:
    TicToc()
    {
        tic();
    }

    void tic()
    {
        start = std::chrono::system_clock::now();
    }

    double toc()
    {
        end = std::chrono::system_clock::now();
        std::chrono::duration<double> elapsed_seconds = end - start;
        return elapsed_seconds.count() * 1000;
    }

private:
    std::chrono::time_point<std::chrono::system_clock> start, end;
};

void setParameter();

// interface
// void processIMU(double t, const Vector3d &linear_acceleration, const Vector3d &angular_velocity);
// void processGNSS(const std::vector<ObsPtr> &gnss_mea);
// void inputEphem(EphemBasePtr ephem_ptr);
// void inputIonoParams(double ts, const std::vector<double> &iono_params);
// void inputGNSSTimeDiff(const double t_diff);

// void processImage(const map<int, vector<pair<int, Eigen::Matrix<double, 7, 1>>>> &image, const std_msgs::Header &header);

// // internal
// void clearState();
// bool initialStructure();
// bool visualInitialAlign();
// // GNSS related
bool GNSSVIAlign();

void updateGNSSStatistics();

// bool relativePose(Matrix3d &relative_R, Vector3d &relative_T, int &l);
// void slideWindow();
// void solveOdometry();
// void slideWindowNew();
void slideWindowOld();
void optimization();
void vector2double();
void double2vector();
// bool failureDetection();

// enum SolverFlag
// {
//     INITIAL,
//     NON_LINEAR
// };

// enum MarginalizationFlag
// {
//     MARGIN_OLD = 0,
//     MARGIN_SECOND_NEW = 1
// };

// SolverFlag solver_flag;
// MarginalizationFlag  marginalization_flag;
// Vector3d g;
// MatrixXd Ap[2];
// VectorXd bp[2];

// Matrix3d ric[NUM_OF_CAM];
// Vector3d tic[NUM_OF_CAM];

// Vector3d Ps[(WINDOW_SIZE + 1)];
// Vector3d Vs[(WINDOW_SIZE + 1)];
// Matrix3d Rs[(WINDOW_SIZE + 1)];
// Vector3d Bas[(WINDOW_SIZE + 1)];
// // Vector3d Bgs[(WINDOW_SIZE + 1)];
// double td;

// Matrix3d back_R0, last_R, last_R0;
// Vector3d back_P0, last_P, last_P0;
// std_msgs::Header Headers[(WINDOW_SIZE + 1)];

// // IntegrationBase *pre_integrations[(WINDOW_SIZE + 1)];
// Vector3d acc_0, gyr_0;

// vector<double> dt_buf[(WINDOW_SIZE + 1)];
// vector<Vector3d> linear_acceleration_buf[(WINDOW_SIZE + 1)];
// vector<Vector3d> angular_velocity_buf[(WINDOW_SIZE + 1)];

// GNSS related
bool gnss_ready;

Eigen::Vector3d anc_ecef;
Eigen::Matrix3d R_ecef_enu;
double yaw_enu_local;
std::vector<ObsPtr> gnss_meas_buf[(WINDOW_SIZE + 1)];
std::vector<EphemBasePtr> gnss_ephem_buf[(WINDOW_SIZE + 1)];
std::vector<double> latest_gnss_iono_params;
std::map<uint32_t, std::vector<EphemBasePtr>> sat2ephem;
std::map<uint32_t, std::map<double, size_t>> sat2time_index;
std::map<uint32_t, uint32_t> sat_track_status;
double para_anc_ecef[3];
double para_yaw_enu_local[1];
double para_rcv_dt[(WINDOW_SIZE + 1) * 4];
double para_rcv_ddt[WINDOW_SIZE + 1];
// GNSS statistics
double diff_t_gnss_local;
Eigen::Matrix3d R_enu_local;
Eigen::Vector3d ecef_pos, enu_pos, enu_vel, enu_ypr;

int frame_count;
int sum_of_outlier, sum_of_back, sum_of_front, sum_of_invalid;

FeatureManager f_manager;
// MotionEstimator m_estimator;
// InitialEXRotation initial_ex_rotation;

// bool first_imu;
// bool is_valid, is_key;
bool failure_occur;

vector<Vector3d> point_cloud;
vector<Vector3d> margin_cloud;
vector<Vector3d> key_poses;
double initial_timestamp;

double para_Pose[WINDOW_SIZE + 1][SIZE_POSE];
double para_SpeedBias[WINDOW_SIZE + 1][SIZE_SPEEDBIAS];
double para_Feature[NUM_OF_F][SIZE_FEATURE];
double para_Ex_Pose[NUM_OF_CAM][SIZE_POSE];
double para_Td[1][1];

// MarginalizationInfo *last_marginalization_info;
vector<double *> last_marginalization_parameter_blocks;

// map<double, ImageFrame> all_image_frame;
// IntegrationBase *tmp_pre_integration;

bool first_optimization;

void readIOresult(std::string IOpath);
void readIOtimeresult(std::string IOtimepath, std::vector<double> &IOtimeresult);
extern bool initiGPS;

// CameraPoseVisualization cameraposevisual(0, 1, 0, 1);
// ros::Publisher pub_camera_pose_visual;

// extern CameraPoseVisualization cameraposevisual;
extern ros::Publisher pub_camera_pose_visual;

// nav_msgs::Path global_path;
// GPSOptimization() {  }
// GPSOptimization(int _test);
// void inputGPS(double t, double latitude, double longitude, double altitude, double posAccuracy);
// void inputOdom(double t, Eigen::Vector3d OdomP, Eigen::Quaterniond OdomQ);
void inputOdom(vector<double> result_t, vector<double> result_px, vector<double> result_py, vector<double> result_pz, 
vector<double> result_Qx, vector<double> result_Qy, vector<double> result_Qz, vector<double> result_Qw, 
vector<double> result_vx, vector<double> result_vy, vector<double> result_vz);

void inputGPS(vector<double> result_t, vector<double> result_lat, vector<double> result_lon, vector<double> result_alt, 
vector<double> result_posAccuracy);

void getGlobalOdom(Eigen::Vector3d &odomP, Eigen::Quaterniond &odomQ);
// ~GPSOptimization();

void optimize();
map<double, vector<double>> OrilocalPoseMap;
map<double, vector<double>> localPoseMap;
map<double, vector<double>> OriglobalPoseMap;
map<double, vector<double>> globalPoseMap;
map<double, vector<double>> OriGPSPositionMap;
map<double, vector<double>> GPSPositionMap;
map<double, vector<double>> GNSSPositionMap;
vector<double> timeMap;
void GPS2XYZ(double latitude, double longitude, double altitude, double *xyz);
// bool initGPS;

bool isSlidingWindow = 1;
GeographicLib::LocalCartesian geoConverter;
std::mutex mPoseMap;
Eigen::Matrix4d WGPS_T_WVIO;
Eigen::Vector3d lastP;
Eigen::Vector3d lastV;
Eigen::Quaterniond lastQ;
vector<Eigen::Vector3d> P;
vector<Eigen::Quaterniond> Q;
vector<Eigen::Vector3d> V;
std::thread threadOpt;
void updateGlobalPath();

// void callgpsoptimizationinputodom(double t, Eigen::Vector3d OdomP, Eigen::Quaterniond OdomQ);
void setParameter();

// interface
void processIMU(double t, const Vector3d &linear_acceleration, const Vector3d &angular_velocity);
void processImage(const map<int, vector<pair<int, Eigen::Matrix<double, 7, 1>>>> &image, const std_msgs::Header &header);
void setReloFrame(double _frame_stamp, int _frame_index, vector<Vector3d> &_match_points, Vector3d _relo_t, Matrix3d _relo_r);
void inputGNSS(double t, double latitude, double longitude, double altitude, double posAccuracy);
// void processGNSS(const std::vector<sensor_msgs::NavSatFixConstPtr> &GPS_msg);
// internal
void clearState();
bool initialStructure();
bool visualInitialAlign();
bool relativePose(Matrix3d &relative_R, Vector3d &relative_T, int &l);
void slideWindow();

void solveOdometry();
void slideWindowNew();
void slideWindowOld();
void optimization();
void vector2double();
void double2vector();
bool failureDetection();

enum SolverFlag
{
    INITIAL,
    NON_LINEAR
};

enum MarginalizationFlag
{
    MARGIN_OLD = 0,
    MARGIN_SECOND_NEW = 1
};

SolverFlag solver_flag;
MarginalizationFlag marginalization_flag;
Vector3d g;
MatrixXd Ap[2], backup_A;
VectorXd bp[2], backup_b;

Matrix3d ric[NUM_OF_CAM];
Vector3d tic[NUM_OF_CAM];

// Vector3d Ps[(WINDOW_SIZE + 1)];
// Vector3d Vs[(WINDOW_SIZE + 1)];
Vector3d Pxyz[(WINDOW_SIZE + 1)];
Vector3d Qxyzw[(WINDOW_SIZE + 1)];
Matrix3d Rs[(WINDOW_SIZE + 1)];
Vector3d Bas[(WINDOW_SIZE + 1)];
vector<Vector3d> Ba_record;
vector<Vector3d> Bg_record;
Vector3d Bgs[(WINDOW_SIZE + 1)];
double td;

Matrix3d back_R0, last_R, last_R0;
Vector3d back_P0, last_P, last_P0;
std_msgs::Header Headers[(WINDOW_SIZE + 1)];

// IntegrationBase *pre_integrations[(WINDOW_SIZE + 1)];
Vector3d acc_0, gyr_0;

vector<double> dt_buf[(WINDOW_SIZE + 1)];
vector<Vector3d> linear_acceleration_buf[(WINDOW_SIZE + 1)];
vector<Vector3d> angular_velocity_buf[(WINDOW_SIZE + 1)];

// int frame_count;
// int sum_of_outlier, sum_of_back, sum_of_front, sum_of_invalid;

// FeatureManager f_manager;
// MotionEstimator m_estimator;
// InitialEXRotation initial_ex_rotation;

// bool first_imu;
// bool is_valid, is_key;
// bool failure_occur;

// vector<Vector3d> point_cloud;
// vector<Vector3d> margin_cloud;
// vector<Vector3d> key_poses;
// double initial_timestamp;

// bool gnss_ready;//addedtobegvins
// double para_Pose[WINDOW_SIZE + 1][SIZE_POSE];
// double para_SpeedBias[WINDOW_SIZE + 1][SIZE_SPEEDBIAS];
// double para_Feature[NUM_OF_F][SIZE_FEATURE];
// // double para_Ex_Pose[NUM_OF_CAM][SIZE_POSE];
// double para_Retrive_Pose[SIZE_POSE];
// double para_Td[1][1];
// double para_Tr[1][1];

// int loop_window_index;

// // MarginalizationInfo *last_marginalization_info;
// vector<double *> last_marginalization_parameter_blocks;

// map<double, ImageFrame> all_image_frame;
// IntegrationBase *tmp_pre_integration;

// relocalization variable
bool relocalization_info;
double relo_frame_stamp;
double relo_frame_index;
int relo_frame_local_index;
vector<Vector3d> match_points;
double relo_Pose[SIZE_POSE];
Matrix3d drift_correct_r;
Vector3d drift_correct_t;
Vector3d prev_relo_t;
Matrix3d prev_relo_r;
Vector3d relo_relative_t;
Quaterniond relo_relative_q;
double relo_relative_yaw;
