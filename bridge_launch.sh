#!/bin/bash

# ROS2 설정
source /ros2_ws/install/setup.bash

# Bridge 설정
source /bridge_ws/install/setup.bash

# ROS_MASTER_URI 설정 확인
if [ -z "$ROS_MASTER_URI" ]; then
  export ROS_MASTER_URI=http://localhost:11311
  echo "ROS_MASTER_URI not set, using default: $ROS_MASTER_URI"
fi

echo "Starting ros1_bridge..."
ros2 run ros1_bridge dynamic_bridge --bridge-all-topics 