#!/usr/bin/env bash

if [-z "$1" ]; then
    echo "Bucket name should bee given"
fi

BUCKET_NAME=$1
REGION=${2:-us-east-1}
aws s3 mb  checksums-ab-12345


```
echo "Hello world" > myfile.txt

```

aws s3 cp myfile.txt s3://checksums-ab-12345

