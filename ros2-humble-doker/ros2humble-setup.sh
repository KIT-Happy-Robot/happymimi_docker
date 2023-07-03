#!/bin/bash -e

# 日本語環境から英語環境へ移動
sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8


# setup sources
sudo apt install software-properties-common
sudo add-apt-repository universe

# ros 2 gpg key
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

# add source list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# apt updateしよう
sudo apt update
sudo apt upgrade

# install ros2 humble
sudo apt install ros-humble-desktop


# 環境構築
source /opt/ros/humble/setup.bash

# Add bashrc
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc


