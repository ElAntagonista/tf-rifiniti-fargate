# tf-rifiniti-fargate

# About
This repository contains terraform code for the creation of the supporting infrastructure and task deployment for AWS Fargate.

# Solution
![Solution](https://user-images.githubusercontent.com/7376045/63470812-3ff95280-c476-11e9-81b7-20653e7c99e5.png)


# How to bring up the enviornemnt
As a more modular approach is taken in regards to splitting the enviornment components into different remote states, a couple of things should be done to bring up the enviornment
1. cd into the remote-state folder and terraform init -> terraform plan -> terraform apply
2. cd into the /env/production/network and repeat the steps from 1
3. cd into /env/production/ecs/base and repeat the steps from step 1
4. Git clown https://github.com/ElAntagonista/tf-rifiniti-demo-app 
6. In the main dir run `docker build -t tf-rifiniti-demo:latest .`
5. run `aws ecr get-login --no-include-email` and run the output of the command
6. run `docker tag tf-rifiniti-demo:latest <ecr_url>/tf-rifiniti-demo:latest`
7. run `docker push <ecr_url>/tf-rifiniti-demo:latest`
8. In tf-rifiniti-fargate cd into /env/prod/ecs/deployments and repeat the steps from 1) 
9. If you open the ALB address you should see the hello message

# Things that are not provisioned with this code:
- cloudwatch logging
- autoscaling
