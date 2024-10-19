
aws s3 mb s3://metadata-try-123999

echo "hellomards" > hello.txt

aws s3api put-object --bucket metadata-try-123999 --key hello.txt --metadata Planet=MArs 

aws s3api head-object --bucket  metadata-try-123999 --key hello.txt


# you can delete the bucket with contents by. --force if versioning is not enabled
aws s3 rb s3://metadata-try-123999 --force