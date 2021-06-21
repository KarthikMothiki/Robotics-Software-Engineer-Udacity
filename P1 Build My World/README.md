# Udacity Robotics Software Engineer Nano Degree Term 1
![2EfCIIF](https://user-images.githubusercontent.com/62557178/122722014-e3903580-d28e-11eb-96d3-9a03ede84a3a.png)

# Project-1 Build My World

## Overview
In this project you'll create your simulation world in Gazebo for all your upcoming projects in the Udacity Robotics Software Engineer Nanodegree Program.

Build a single floor wall structure using the Building Editor tool in Gazebo. Apply at least one feature, one color, and optionally one texture to your structure. Make sure there's enough space between the walls for a robot to navigate.
Model any object of your choice using the Model Editor tool in Gazebo. Your model links should be connected with joints.
Import your structure and two instances of your model inside an empty Gazebo World.
Import at least one model from the Gazebo online library and implement it in your existing Gazebo world.
Write a C++ World Plugin to interact with your world. Your code should display “Welcome to Karthik Mothiki’s World!” message as soon as you launch the Gazebo world file.

## Project Description

### Directory Structure
```
    .P1 Build My World                 # myrobot lab main folder 
    ├── images                         # Code output image                   
    │   ├── output.png
    ├── model                          # Model files of the two-wheeled robot
    │   ├── bot1
    │   │   ├── model.config
    │   │   ├── model.sdf
    ├── script                         # Gazebo World plugin C++ script      
    │   ├── script.cpp
    ├── world                          # Gazebo main World empty scene
    │   ├── myworld
    ├── CMakeLists.txt                 # Link libraries 
    └──                              
```

### Steps to launch the simulation

#### Step 1 Update and upgrade the Workspace image
```sh
$ sudo apt-get update && sudo apt-get upgrade -y
```

#### Step 2 Clone the lab folder in /home/workspace/
```sh
$ cd /home/workspace/
$ https://github.com/KarthikMothiki/Robotics-Software-Engineer-Udacity.git
```

#### Step 3 Compile the code
```sh
$ cd /home/workspace/myrobot/
$ mkdir build
$ cd build/
$ cmake ../ && make
```

#### Step 4 Add the library path to the Gazebo plugin path  
```sh
$ export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:<build folder's path>
```

#### Step 5 Run the Gazebo World file  
```sh
$ cd /home/workspace/myrobot/world/
$ gazebo myworld
```

## Output Image
![Screenshot from 2021-06-21 10-53-56](https://user-images.githubusercontent.com/62557178/122721328-28679c80-d28e-11eb-9dcd-a8f12ab6aac1.png)
