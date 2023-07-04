FROM nvidia/opengl:base-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV __NV_PRIME_RENDER_OFFLOAD=1
ENV __GLX_VENDOR_LIBRARY_NAME=nvidia

RUN apt-get update && apt-get install -y \ curl \ gnupg \ lsb-release
COPY . /app
WORKDIR /app
CMD ["bash","ros-humble-docker"]


RUN mkdir -p ~/ros_ws/src
WORKDIR /root/ros2_ws/
RUN /bin/bash -c '. /opt/ros/humble/setup.bash; colcon build'

# エントリーポイントを設定
COPY ./ros_entrypoint.sh /
RUN chmod +x /ros_entrypoint.sh
ENTRYPOINT ["/ros_entrypoint.sh"]

# コマンドを設定
CMD ["bash"]
