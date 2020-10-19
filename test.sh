#!/bin/bash

echo -e "$1 it's working access key is jkbjk"

echo "'`date` start waiting time"

sleep 60

echo "`date` waiting time over"


roles=$(aws iam list-roles --query 'Roles[?contains(RoleName, `Angulr`) == `true` && ends_with(RoleName, `$1`)].RoleName' --output text)
echo "$roles"
echo "Attaching policy"
for role in $(aws iam list-roles --query 'Roles[?contains(RoleName, `Angulr`) == `true` && ends_with(RoleName, `$1`)].RoleName' --output text); do
  echo "$role"
  aws iam attach-role-policy --role-name $role  --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --output text
done

