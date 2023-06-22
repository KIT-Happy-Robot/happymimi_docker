FROM ubuntu:20.04

RUN echo 'このDockerfileはTeam KIT Happy Mimi用です。KIT Happy Mimi ROS1 noetic向けのパッケージをまとめたものです'
LABEL verion="1.0"
LABEL description="For Team KIT-Happy-Mimi. Composed primary package of ROS1 noetic. Created by Takumi"

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get upgrade
RUN useradd -m -s /bin/bash teamkit
RUN echo 'teamkit:newpassword' | chapasswd
RUN usermod -aG sudo teamkit
