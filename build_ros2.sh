#!/bin/bash

source /opt/ros/humble/setup.bash
colcon build --paths src/thirdparty/*
source install/setup.bash
colcon build --paths src/thirdparty/open_vins/*
source install/setup.bash
colcon build --paths src/mins src/mins_data
source install/setup.bash
colcon build --paths src/mins_eval
