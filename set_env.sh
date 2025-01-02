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

echo "I will install git&github-desktop"
sudo apt-get install git
sudo apt-get -y wget
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
sudo apt update && sudo apt install github-desktop
echo "I installed git"

echo "I will install tensorflow"
sudo apt-get install python3-pip
pip install --upgrade pip
pip install tensorflow
echo "I installed tensorflow"

echo "I will install numpy, pandas, matplotlib, genesis, scikit-learn"
pip3 install numpy
pip3 install pandas
pip3 install matplotlib
pip3 install genesis-world 
python3 -m venv sklearn-env
source sklearn-env/bin/activate
pip3 install -U scikit-learn
echo "I installed numpy, pandas, matplotlib, genesis, scikit-learn"

echo "I will install RUST"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh