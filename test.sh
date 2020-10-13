#!/bin/bash

echo -e "$1 it's working access key is jkbjk"
roles=$(aws iam list-roles --query 'Roles[].RoleName' --output text) 

for role in $roles; do
  echo "$role"
done
