# 创建新容器
echo "start a new container : RVEMU"

docker run -it -d \
--name RVEMU \
-v /home/jiahan/Desktop/RVEMU:/workspace \
--net host \
dockerpull.org/ubuntu:20.04