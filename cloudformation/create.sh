#!/bin/bash

aws cloudformation create-stack --stack-name eks --template-body file://eks.yaml --parameters file://parameters.json --capabilities CAPABILITY_IAM
sleep 60s
./kubeconfig.sh
