<include a CircleCI status badge, here>

# Udacity DevOps Nanodegree Project 5: Microservices
In this project a docker imagine containing a Flask API for a sci-kit learn ML model is run on Kubernetes. The repository contains:  
- app.py: the Flask API and sci-kit model
- Makefile: a makefile to install requirements and lint the dockerfile
- Dockerfile: a dockerfile that builds the image based on app.py, install required packages and opens a port
- several batch files: to build and run the docker image, upload it and to send an example json to the Flask API
- requirements.txt with required packages
- circleci-folder with configuration.yml for Circleci integration
- model_data-folder
- output_txt_files folder containing sample logs from Docker and Kubernetes

# Setup and run

## set up python environment
After cloning the starter git create a venv (Windows):

`python3 -m venv /devops`  
`activate devops`

To prevent pylint error create environment with conda and upgrade pylint
`conda create --name py37 python=3.7.2`
`pip upgrade pylint`

## Lint dockerfile  
To test the dockerfile and python app with hadolint and pylint:  
`make lint`

## Build and run image  
Change permissions and run shell script:  
`chmod +x docker.sh` 
`./run_docker.sh`  

Note: on windows start docker client, have it disable Virtualbox, restart PC and build from dockerfile:
`docker build .`


## test image
` ./make_prediction.sh`

## Upload docker image
Upload the image to dockerhub:
`./upload_docker.sh`

## Start Minikube cluster
Note: on windows disable Hyper-V with admin-console:  
`dism.exe /Online /Disable-Feature:Microsoft-Hyper-V`
Start minikube:  
`minikube start`

Check if cluster started correctly:  
`kubectl config view`

## Deploy container on Kubernetes
Chmod +x for run_kubernetes.sh and:  
`./run_kubernetes.sh`
to serve the docker container on the Kunerbetes cluster, list running pods and forward the port.

Run make_prediction.sh again to test the deployment, results stored in output_txt_files\kubernetes_out.txt.

## Circleci integration  
Set up hidden folder and config file as described here. https://circleci.com/blog/triggering-trusted-ci-jobs-on-untrusted-forks/  


## Clean-up
Stop and delte Kubernetes cluster:  
`minikube stop`  
`minikube delete`