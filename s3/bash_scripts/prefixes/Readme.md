```sh
aws s3 mb s3://prefixes-fun-ab-52354444

aws s3api put-object --bucket="prefixes-fun-ab-52354444" --key="hello/"

aws s3api delete-bucket --bucket="prefixes-fun-ab-52354444" ---> this wont delete as the bucket has contents

aws s3 rm s3://prefixes-fun-ab-52354444 --recursive
```
# Can have up to 1024 bytes in prefixes abc/def/gfhi/..,.,,.,.



