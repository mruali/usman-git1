!/bin/bash
#Author:usman
#Date: 8/11/24
#this script will report aws resources
# AWS S3, LAMBDA, EC2, IAM
#set -x
#set -e
#set -o
# list s3
 echo "list s3: "
aws s3 ls
echo "list ec2:"
#list ec2
aws ec2 describe-instances | jq '.Reservations[].Instances[] | "\(.InstanceId)   -    -  \(.LaunchTime)"'
echo "list IAM users:"
#list IAM users
aws iam list-users
echo "list lambda functions"
#list lambda
aws lambda list-functions
