#/bin/bash

echo "Hello, and welcome to your one-stop Linux system and connections display!"

echo ' '

LinuxV=$(uname -v)
echo "Your current Linux Version is: $LinuxV"
LinuxNR=$(uname -sr)
echo "Your Linux Name and Release Version is: $LinuxNR"
echo ' '
echo '-----'
echo ' '
ExtIP=$(curl -s ifconfig.co)
IntIP=$(ifconfig | grep 'broadcast' | awk '{print $2}')
DG=$(route | grep 'UG' | awk '{print $2}')
echo "Your External IP Address is: $ExtIP"
echo "Your Internal IP Address is: $IntIP"
echo "Your Default Gateway is: $DG"
echo ' '
echo '-----'
echo ' '
echo "Your Disk Space information is as follows:"
Total=$(df -h --total | grep ^total | awk '{print $2}')
Used=$(df -h --total | grep ^total | awk '{print $3}')
Avail=$(df -h --total | grep ^total | awk '{print $4}')
UsedPercent=$(df -h --total | grep ^total | awk '{print $5}')
echo "Total Disk Space: $Total"
echo "Amount of Space Used: $Used"
echo "Amount of Space Available: $Avail"
echo "Amount of Used (%): $UsedPercent"
echo ' '
echo '-----'
echo ' '
BDir=$(du -sh * | sort -n | tail -5)
echo "Your top five directories and their respective sizes are:
$BDir"
echo ' '
echo '-----'
echo ' '
echo "Your CPU usage can be seen below, set to refresh at 10-second intervals. For more commands, press "h" for help. Press "q" to quit."
echo "Showing in 5..."; sleep 1
echo "Showing in 4..."; sleep 1
echo "Showing in 3..."; sleep 1
echo "Showing in 2..."; sleep 1
echo "Showing in 1..."; sleep 1
top -d 10
