# Bash Script to deploy files into defined location.


## Pre-requesits
* Make sure you have give source, destination details in input file which is a instruction file
* Format should be /source/files,/destination/files

## Inputs
Input deploy instruction file
If any value not passed in runtime script will be exit.

## Usage
Assign required permission 
`chmod +x deploy_script.sh`

Run the script
`sh deploy_script.sh /tmp/deploy_instructions.txt`

If required, in Debug Mode
`sh -xv deploy_script.sh /tmp/deploy_instructions.txt`


## Sample Usage
![alt text](https://github.com/duggu-reddy/siri-aws-support/blob/main/DeployScript/deploy_script_image.JPG)
