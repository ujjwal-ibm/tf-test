#!/bin/bash



regions=("us-south" "us-east")
i=0
  
# Loop upto array of regions
# starting from index, i=0
touch crns.txt
while [ $i -lt ${#regions[@]} ]
do
    # To print index, ith
    # region
    echo ${regions[$i]}

    now=$(date +"%T")
    echo "script starting @ ${now} in region : ${regions[$i]"

    export TF_VAR_REGION=${regions[$i]}

    terraform apply -auto-approve

    output=$(terraform output --raw ibm_is_image)
    echo "${output}" >> crns.txt
    echo "done"
    terraform destroy -auto-approve

    # Increment the i = i + 1
    i=`expr $i + 1`
done