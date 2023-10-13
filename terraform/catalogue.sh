#!/bin/bash
APP_VERSION=$1
echo "app version: $APP_VERSION"
yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible botocore boto3
cd /tmp
# git clone https://github.com/Chinna9967/roboshop-shell-tf-master.git
# cd roboshop-shell-tf-master
# sh mongodb.sh
ansible-pull -U https://github.com/Chinna9967/ansible-roboshop-roles-master-tf.git -e component=catalogue -e app_version=$APP_VERSION main.yaml

# now we are using ansible