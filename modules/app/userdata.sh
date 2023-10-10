#!/bin/bash

dnf install python3.11-pip ansible -y | tee -a /opt/userdata.log
pip3.11 install boto3 botocore
ansible-pull -i localhost, -U https://github.com/aambadkar/infra-ansible main.yml -e role_name=${role_name} | tee -a /opt/userdata.log