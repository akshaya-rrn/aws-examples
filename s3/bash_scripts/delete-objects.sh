#!/usr/bin/env bash

if [-z "$1" ]; then
    echo "Bucket name should bee given"
fi

BUCKET_NAME=$1

OBJECTS=$(aws s3api list-objects --bucket "$BUCKET_NAME" --query 'Contents[].{Key: Key}' --output json)
if [ "$OBJECTS" == "null" ]; then
    echo "Bucket is empty"
    exit 0
fi
echo '{"Objects":' > delete.json
echo $OBJECTS | jq '.' >> delete.json
echo '}' >> delete.json
aws s3api delete-objects --bucket "$BUCKET_NAME" --delete file://delete.json
rm delete.json