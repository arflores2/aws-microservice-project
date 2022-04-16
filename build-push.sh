#!/bin/bash

source .env

aws ecr get-login-password --region us-west-2 --profile angelrob | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com

docker build -t koffee-luv .

docker tag koffee-luv $AWS_ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com/koffee-luv:1

docker push $AWS_ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com/koffee-luv:1
