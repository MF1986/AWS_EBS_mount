# AWS_EBS_mount

![alt text](https://raw.githubusercontent.com/MF1986/AWS_EBS_mount/main/advanced_details.jpg)

While selecting your EC2 instance, you can copy/paste the code within the Advanced Details tab or upload the script.
This will format your EBS to ext4 mount your EBS under /data and update the fstab for persistent mount after a reboot.
If this script is successful you will find a text file /data/data.txt with the result of the operation.
