FROM ros:noetic
WORKDIR /root/
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics
RUN echo "source /opt/ros/noetic/setup.sh" >> .bashrc
RUN mkdir -p catkin_ws/src
RUN cd catkin_ws/src && . /opt/ros/noetic/setup.sh && catkin_init_workspace
RUN cd && cd catkin_ws && . /opt/ros/noetic/setup.sh && catkin_make
RUN cd && cd catkin_ws && . /opt/ros/noetic/setup.sh && catkin_make
