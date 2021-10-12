#!/bin/sh

path_catkin_ws="/home/workspace/catkin_ws"

xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && roslaunch turtlebot_gazebo turtlebot_world.launch" &

sleep 5

xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && roslaunch turtlebot_gazebo amcl_demo.launch map_file:=${path_catkin_ws}/src/map/playground.yaml" &

sleep 5

xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && roslaunch add_markers home_service.launch rviz_path:=${path_catkin_ws}/src/rvizConfig/home_service_rvizConfig.rviz" &
sleep 5

xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && rosrun add_markers add_markers" &

xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && rosrun pick_objects pick_objects" 
