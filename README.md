<include a CircleCI status badge, here>

# Udacity DevOps Nanodegree Project 5: Microservices

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

## test image
` ./make_prediction.sh`

## Upload docker image
Upload the image to dockerhub:
`./upload_docker.sh`


### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
On windows start docker client, have it disable Virtualbox, restart PC and build from dockerfile:
`docker build .`
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
