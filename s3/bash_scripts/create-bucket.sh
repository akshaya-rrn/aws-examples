#!/usr/bin/env bash

if [-z "$1" ]; then
    echo "Bucket name should bee given"
fi

BUCKET_NAME=$1
REGION=${2:-us-east-1}
aws s3api create-bucket --bucket $BUCKET_NAME  

## --create-bucket-configuration LocationConstraint="$REGION".  --> no need to mention if the REGION is us-eaast-1