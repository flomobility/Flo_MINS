#!/bin/bash

# Exit immediately if a command exits with a non-zero status
#set -e

# Source ROS 2 Humble setup script
source /opt/ros/humble/setup.bash

# Build the third-party dependencies
echo "Building third-party dependencies..."
colcon build --paths src/thirdparty/* --cmake-clean-first
if [ $? -ne 0 ]; then
  echo "Error: Failed to build third-party dependencies."
  exit 1
fi

# Source the workspace setup file after building
source install/setup.bash

# Build the Open VINS (open_vins) package with allow-overriding
echo "Building Open VINS (open_vins)..."
colcon build --paths src/thirdparty/open_vins/* --allow-overriding ov_core ov_eval --cmake-clean-first
if [ $? -ne 0 ]; then
  echo "Error: Failed to build open_vins package."
  exit 1
fi

# Source the workspace setup file after building
source install/setup.bash

# Build the MINS and MINS data packages
echo "Building MINS and MINS data..."
colcon build --paths src/mins src/mins_data --cmake-clean-first
if [ $? -ne 0 ]; then
  echo "Error: Failed to build MINS or MINS data packages."
  exit 1
fi

# Source the workspace setup file after building
source install/setup.bash

# Build the MINS evaluation package with allow-overriding
echo "Building MINS evaluation package..."
colcon build --paths src/mins_eval --allow-overriding ov_core ov_eval --cmake-clean-first
if [ $? -ne 0 ]; then
  echo "Error: Failed to build MINS evaluation package."
  exit 1
fi

# Source the workspace setup file one last time
source install/setup.bash

echo "Build process completed successfully!"

