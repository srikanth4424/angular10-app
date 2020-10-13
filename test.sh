#!/bin/bash

echo -e "$1 it's working access key is $(secrets.ACCESSKEY)  secrt is $(secrets.ACCESSKEY)  jkbjk"
echo -e "[se]\naws_access_key_id=$adummy\naws_secret_access_key=$sdummy\nregion=ap-south-1\noutput=json" > ~/.aws/config
cat ~/.aws/config

aws iam list-roles --query 'Roles[].RoleName' 
