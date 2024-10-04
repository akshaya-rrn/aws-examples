#!/usr/bin/env bash

#!/bin/bash
echo "==put-object"

if [-z "$1" ]; then
    echo "Bucket name should bee given"
fi

BUCKET_NAME=$1
FILE_NAME=$2

OBJECT_KEY=$(basename "$FILE_NAME")

aws s3api put-object --bucket $BUCKET_NAME --body $FILE_NAME --key $OBJECT_KEY