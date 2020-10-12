#!/bin/bash

echo -e "it's working /n access key is ${{ secrets.ACCESSKEY }}  secrt is ${{ secrets.ACCESSKEY }}"
echo -e "[se]\naws_access_key_id=$adummy\naws_secret_access_key=$sdummy\nregion=ap-south-1\noutput=json" > ~/.aws/config
cat ~/.aws/config
