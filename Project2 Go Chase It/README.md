# RoboND-Term1-P2-Go-Chase-It
Project-2 of Udacity Robotics Software Engineer Nanodegree Program

## Output video
- **When the ball is camera frame bot moves in that direction.**
![Screencast from Thursday 15 July 2021 03_33_23  IST](https://user-images.githubusercontent.com/62557178/125771512-5f4643a0-5761-4c0b-9dbf-67aadd7f0f90.gif)

- **When the ball is no in the frame the bot simply stops.** 
![Screencast from Thursday 15 July 2021 03_33_56  IST](https://user-images.githubusercontent.com/62557178/125771557-2fb631f7-100b-4d18-a431-6e9da7c067b6.gif)

## Overview  
In this project you'll create two ROS packages inside your `catkin_ws/src`: the `drive_bot` and the `ball_chaser` which will be used in Gazebo for all your upcoming projects in the [Udacity Robotics Software Engineer Nanodegree Program](https://www.udacity.com/course/robotics-software-engineer--nd209). Here are the steps to design the robot, house it inside your world, and program it to chase white-colored balls:  
1. `drive_bot`:  
* Create a `my_robot` ROS package to hold your robot, the white ball, and the world.
* Design a differential drive robot with the Unified Robot Description Format. Add two sensors to your robot: a lidar and a camera. Add Gazebo plugins for your robot’s differential drive, lidar, and camera. The robot you design should be significantly different from the one presented in the project lesson. Implement significant changes such as adjusting the color, wheel radius, and chassis dimensions. Or completely redesign the robot model! After all you want to impress your future employers :-D
* House your robot inside the world you built in the **Build My World** project.
* Add a white-colored ball to your Gazebo world and save a new copy of this world.
* The `world.launch` file should launch your world with the white-colored ball and your robot.
2. `ball_chaser`:
* Create a `ball_chaser` ROS package to hold your C++ nodes.
* Write a `drive_bot` C++ node that will provide a `ball_chaser/command_robot` service to drive the robot by controlling its linear x and angular z velocities. The service should publish to the wheel joints and return back the requested velocities.
* Write a `process_image` C++ node that reads your robot’s camera image, analyzes it to determine the presence and position of a white ball. If a white ball exists in the image, your node should request a service via a client to drive the robot towards it.
* The `ball_chaser.launch` should run both the `drive_bot` and the `process_image` nodes.  

## Setup Instructions (abbreviated)   
1. Open Ubuntu Bash and clone the project repository  
2. On the command line execute  
```bash
sudo apt-get update && sudo apt-get upgrade -y
```
3. Build and run your code.  
## Project Description  
Directory Structure  
```
.Go-Chase-It                                   # Go Chase It Project
├── catkin_ws                                  # Catkin workspace
│   ├── src
│   │   ├── ball_chaser                        # ball_chaser package        
│   │   │   ├── launch                         # launch folder for launch files
│   │   │   │   ├── ball_chaser.launch
│   │   │   ├── src                            # source folder for C++ scripts
│   │   │   │   ├── drive_bot.cpp
│   │   │   │   ├── process_images.cpp
│   │   │   ├── srv                            # service folder for ROS services
│   │   │   │   ├── DriveToTarget.srv
│   │   │   ├── CMakeLists.txt                 # compiler instructions
│   │   │   ├── package.xml                    # package info
│   │   ├── my_robot                           # my_robot package        
│   │   │   ├── launch                         # launch folder for launch files   
│   │   │   │   ├── robot_description.launch
│   │   │   │   ├── world.launch
│   │   │   ├── meshes                         # meshes folder for sensors
│   │   │   │   ├── hokuyo.dae
│   │   │   ├── urdf                           # urdf folder for xarco files
│   │   │   │   ├── my_robot.gazebo
│   │   │   │   ├── my_robot.xacro
│   │   │   ├── worlds                         # world folder for world files
│   │   │   │   ├── empty.world
│   │   │   │   ├── office.world
│   │   │   ├── CMakeLists.txt                 # compiler instructions
│   │   │   ├── package.xml                    # package info
├── my_ball                                    # Model files 
│   ├── model.config
│   ├── model.sdf
├── pic                                     
│   ├── record video.mp4                       # video
│   ├── video_gif.gif                          # video
```
- [drive_bot.cpp](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/046119888934f048b1e99ec4a8233dc202710158/Project2%20Go%20Chase%20It/ball_chaser/src/drive_bot.cpp): ROS service C++ script, command the robot with specify speeds.  
- [process_images.cpp](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/122db0962005881a09f80fa12a73e0f4e8e3a297/Project2%20Go%20Chase%20It/ball_chaser/src/process_image.cpp): ROS service C++ script, process the camera image and return requested speeds.  
- [world.launch](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/122db0962005881a09f80fa12a73e0f4e8e3a297/Project2%20Go%20Chase%20It/my_robot/launch/world.launch): Launch my_gokart mode in Gazebo world with building and plugins.  
- [robot_description.launch](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/122db0962005881a09f80fa12a73e0f4e8e3a297/Project2%20Go%20Chase%20It/my_robot/launch/robot_description.launch): Create robot model in Gazebo world. 
- [office.world](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/122db0962005881a09f80fa12a73e0f4e8e3a297/Project2%20Go%20Chase%20It/my_robot/worlds/world.world): Gazebo world file that includes the models.  
- [CMakeLists.txt](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/main/Project2%20Go%20Chase%20It/my_robot/CMakeLists.txt): File to link the C++ code to libraries.  
- [hokuyo.dae](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/main/Project2%20Go%20Chase%20It/my_robot/meshes/hokuyo.dae): Hokuyo LiDAR sensor mesh model.  
- [my_robot.gazebo](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/main/Project2%20Go%20Chase%20It/my_robot/urdf/my_robot.gazebo): Define my_robot URDF model plugins.  
- [my_robot.xacro](https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity/blob/main/Project2%20Go%20Chase%20It/my_robot/urdf/my_robot.xacro): Define my_robot URDF model.  

## Run the project  
* Clone this repository
* Open the repository and make  
```
cd /home/workspace/catkin_ws/
catkin_make
```
* Launch my_robot in Gazebo to load both the world and plugins  
```
roslaunch my_robot world.launch
```   
* Launch ball_chaser and process_image nodes  
```
cd /home/workspace/catkin_ws/
source devel/setup.bash
roslaunch ball_chaser ball_chaser.launch
```  
* Visualize  
```
cd /home/workspace/catkin_ws/
source devel/setup.bash
rosrun rqt_image_view rqt_image_view  
```  
## Important:

Here comes the most stupid thing:

After you follow the whole instruction on Udacity, you'll find out that your project won't be passed because of "Spawnmodel Failure: Model Name Already exists". Even though the whole project works with this little error, those reviewer still won't let you pass.
All you have to do is delete everything about ```"<model name='my_robot'>"``` in "office.world" file. I had to submit my project twice as I had two `my_robot` models. Hope this helps.
