#!/usr/bin/env bash

if [-z "$1" ]; then
    echo "Bucket name should bee given"
fi

aws s3api list-buckets --color on --output table --query Buckets[].Name

aws s3api list-buckets --color on | jq -r '.Buckets | sort_by(.CreateionDate) | reverse | .[0:5] | .Name'