
# Camera Configuration Parameters

## Camera General Configuration
- **`enabled`**: Enables or disables camera functionality in the system.
- **`max_n`**: Maximum number of cameras to be used simultaneously.
- **`use_stereo`**: Enables stereo vision functionality using paired cameras.
- **`stereo_pair`**: Specifies the indices of cameras used as a stereo pair.
- **`do_calib_ext`**: Enables external calibration of the camera system.
- **`do_calib_int`**: Enables intrinsic calibration to refine camera lens parameters.
- **`do_calib_dt`**: Enables calibration of time delays between camera and IMU.
- **`n_pts`**: Number of points used for calibration, higher values improve reliability.
- **`fast`**: Adjusts the tradeoff between detection speed and accuracy during feature extraction.
- **`grid_x` and `grid_y`**: Grid dimensions for calibration pattern detection.
- **`min_px_dist`**: Minimum pixel distance to reduce overlapping feature points.
- **`knn`**: Ratio for stricter nearest-neighbor matching of feature points.
- **`downsample`**: Reduces image resolution for efficient processing.
- **`histogram_method`**: Adjusts the brightness histogram dynamically for better image clarity.
- **`max_slam`**: Maximum features allowed for SLAM processing.
- **`max_msckf`**: Maximum features allowed for MSCKF processing.
- **`feat_rep`**: Feature representation type, here it uses 3D global points.
- **`init_cov_*`**: Initial covariance values for different calibration parameters to define uncertainty.
- **`sigma_px`**: Standard deviation of pixel error for feature detection.
- **`chi2_mult`**: Multiplier for the Chi-squared test threshold for outlier rejection.
- **`fi_*`**: Limits for feature distances, baseline, and condition number to ensure robustness.

## Camera-Specific Configuration
### Camera 0 (`cam0`)
- **`timeoffset`**: Time offset to synchronize camera timestamps with other sensors.
- **`T_imu_cam`**: Transformation matrix defining spatial relationship between camera and IMU.
- **`distortion_coeffs`**: Distortion parameters to correct lens-induced distortions.
- **`distortion_model`**: Specifies the distortion model used (e.g., radial-tangential).
- **`intrinsics`**: Camera intrinsic parameters including focal lengths and principal points.
- **`resolution`**: Image resolution in pixels.
- **`timeshift_cam_imu`**: Additional time offset between camera and IMU.
- **`topic`**: ROS topic for the camera's image stream.

### Camera 1 (`cam1`)
- **`timeoffset`**: Time offset to synchronize camera timestamps with other sensors.
- **`T_imu_cam`**: Transformation matrix defining spatial relationship between camera and IMU.
- **`distortion_coeffs`**: Distortion parameters to correct lens-induced distortions.
- **`distortion_model`**: Specifies the distortion model used (e.g., radial-tangential).
- **`intrinsics`**: Camera intrinsic parameters including focal lengths and principal points.
- **`resolution`**: Image resolution in pixels.
- **`timeshift_cam_imu`**: Additional time offset between camera and IMU.
- **`topic`**: ROS topic for the camera's image stream.

## Wheel Configuration
- **`enabled`**: Enables wheel odometry integration.
- **`type`**: Type of wheel odometry model.
- **`do_calib_*`**: Enable calibration of wheel odometry parameters (intrinsic, external, or time).
- **`noise_*`**: Noise levels for angular velocity, linear velocity, and position estimates.
- **`init_cov_*`**: Initial covariance values for wheel odometry parameters.
- **`chi2_mult`**: Multiplier for Chi-squared test for wheel odometry outlier rejection.
- **`timeoffset`**: Time offset for wheel odometry sensor.
- **`intrinsics`**: Intrinsic parameters for the wheel model.
- **`reuse_of_information`**: Whether previously computed information is reused.
- **`T_imu_wheel`**: Transformation matrix defining the spatial relationship between IMU and wheel.
- **`topic`**: ROS topic for wheel odometry data.

## Estimation Configuration
- **`gravity_mag`**: Gravity magnitude used for gravity alignment.
- **`clone_freq`**: Frequency for cloning state in the estimator.
- **`window_size`**: Time window size for estimation updates.
- **`intr_order`**: Order of integration in estimation.
- **`intr_error_*`**: Thresholds for error magnitudes in position, orientation, and overall estimation.
- **`dt_extrapolation`**: Time step used for state extrapolation.
- **`use_imu_*`**: Toggles use of IMU residuals and covariance for estimation.
- **`use_pol_cov`**: Use polynomial covariance modeling for estimation.
- **`dynamic_cloning`**: Dynamically adjusts cloning behavior for efficiency.

## Initialization Configuration
- **`window_time`**: Time window for initialization.
- **`imu_thresh`**: Threshold for IMU data quality during initialization.
- **`imu_wheel_thresh`**: IMU and wheel odometry initialization threshold.
- **`imu_only_init`**: Enables IMU-only initialization mode.
- **`imu_gravity_aligned`**: Ensures IMU initialization aligns with gravity.
- **`use_gt_*`**: Enables use of ground truth data (e.g., GPS, LIDAR) for initialization.
- **`cov_size`**: Initial covariance size defining uncertainty.

## IMU Configuration
- **`accel_noise`**: Noise level in accelerometer readings.
- **`accel_bias`**: Accelerometer bias level.
- **`gyro_noise`**: Noise level in gyroscope readings.
- **`gyro_bias`**: Gyroscope bias level.
- **`topic`**: ROS topic for IMU data.

## System Configuration
- **`verbosity`**: Logging verbosity level for debugging.
- **`save_timing`**: Enables saving processing time logs.
- **`path_timing`**: Path to save timing logs.
- **`print_output`**: Enables printing output for debugging and insights.