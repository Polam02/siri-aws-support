#!/bin/bash
# Script to deploy files defined in input file.
# Make sure to provide absolute path as run time input for the script

if [[ -z $1 ]]; then
        echo -e "Please provide inpur file which has source and destination details for deployment"
        echo -e "Example: sh deploy_script.sh /tmp/deploy_input.txt"
        exit 1
else
        echo -e "Input is Valid"
fi

echo -e "Checking provided path is valid or not"
path=$(ls -ltr $1 | wc -l)
if [ $path -eq 1 ]; then
        echo -e "Input file path is valid"
else
        echo -e "Provided input file path is not available. Please check and run again"
        exit 1
fi

for line in $(cat $1)
do
        # echo -e "$line"
        se=$(echo $line | awk -F"," '{print $1}')
        dn=$(echo $line |awk -F"," '{print $2}')
        cp -arv $se $dn
done
