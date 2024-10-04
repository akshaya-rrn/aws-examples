#!/usr/bin/env bash

if [-z "$1" ]; then
    echo "Bucket name should bee given"
fi

BUCKET_NAME=$1

aws s3api delete-bucket --bucket $BUCKET_NAME