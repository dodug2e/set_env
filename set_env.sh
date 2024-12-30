
echo "I will install Ros2 humble"
sudo apt-get install software-properties-common
sudo add-apt-repository universe

sudo apt-get update && sudo apt-get install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg


echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install ros-humble-desktop
echo "I installed ROS2 humble"

echo "I will install pip3"
sudo apt-get install python3-pip
echo "I installed pip3"

echo "I will install git"

echo "I will install tensorflow"
