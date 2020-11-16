# AWS_EBS_mount

![alt text](https://raw.githubusercontent.com/MF1986/AWS_EBS_mount/main/advanced_details.jpg)

While selecting your EC2 instance, you can copy/paste the code within the Advanced Details tab or upload the script.
This will format your EBS to ext4 mount your EBS under /data and update the fstab for persistent mount after a reboot.
If this script is successful you will find a text file /data/data.txt with the result of the operation.

# !IMPORTANT!
While your typing **lsblk** in your console, the root is under **xvda**.
This script is working at the moment for the first EBS (/dev/sdb) which is referred as xvdb.
If you decide to have your EBS under **/dev/sdc** replace all **xvdb** for **xvdc** and so on **/dev/sdd = xvdd**.

# Source
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html
