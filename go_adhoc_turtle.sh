#Change this to turtlebot number
IPADDR="192.168.7.2/24"


sudo service network-manager stop
sleep 1
sudo ip link set wlan0 down
sleep 1
sudo iwconfig wlan0 mode ad-hoc
sudo iwconfig wlan0 essid 'TurtleNet'
sudo ip link set wlan0 up
sleep 1
sudo ip addr add $IPADDR dev wlan0
