#!/bin/bash
#
#############################
#author: sandip.mane
#Date: 04/4/2026
#Version: v1
#Title: aws resource tracker to avoid sudden spike is usage
#Description: runs everyday 6AM IST
#############################

set -x 

echo "---$(date)---" >> resource_tracker.log

#returns s3 buckets
aws s3 ls >> resource_tracker.log

#returns ec2 instance-id
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource_tracker.log

#returns lambda fuctions
aws lambda list-functions >> resource_tracker.log

#returns iam users
aws iam list-users >> resource_tracker.log

$(date) >> resource_tracker.log
