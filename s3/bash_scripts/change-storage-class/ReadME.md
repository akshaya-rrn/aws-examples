aws s3 mb s3://change-storage-class-1234999

#create a file
echo "hello mars" > hello.txt


# find the storage class
aws s3api list-objects-v2 --bucket change-storage-class-1234999  --query "Contents[*].StorageClass" --output text

aws s3 cp "hello.txt" s3://change-storage-class-1234999 --storage-class STANDARD_IA

aws s3 rb s3://change-storage-class-1234999 --force