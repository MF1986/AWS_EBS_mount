#!/bin/bash

#format to ext4
sudo mkfs -t ext4 /dev/xvdb

#create data folder
sudo mkdir /data

#mount AWS EBS to /data
sudo mount /dev/xvdb /data

#backup fstab
sudo cp /etc/fstab /etc/fstab.bak

#append for persistent EBS mount after a reboot
sudo echo '/dev/xvdb /data ext4 defaults, nofail 0 2' | sudo tee -a /etc/fstab

#browse data folder
cd /data

#create a data file test
sudo touch data.txt

#run bash as a sudo and write result to data.txt
sudo bash -c "file -s /dev/xvdb > data.txt"
