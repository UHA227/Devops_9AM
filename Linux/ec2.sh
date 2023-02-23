#!/bin/bash

export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
export AWS_DEFAULT_REGION=ap-south-1
export AWS_DEFAULT_OUTPUT=table

INSTANCE_TYPE=t2.micro
AMI_ID=ami-0e742cca61fb65051
SECURITY_GROUP_ID=Linux
KEY_NAME=awskey

aws ec2 run-instances \
	          --instance-type $INSTANCE_TYPE \
		              --image-id $AMI_ID \
			                    --security-group-ids $SECURITY_GROUP_ID \
					                      --key-name $KEY_NAME

echo "EC2 Instance Launched Successfully"
