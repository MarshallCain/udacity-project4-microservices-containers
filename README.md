[![CircleCI](https://dl.circleci.com/status-badge/img/gh/MarshallCain/udacity-project4-microservices-containers/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/MarshallCain/udacity-project4-microservices-containers/tree/main)

## Project Overview

In this project, we will apply the skills we have acquired in this course to operationalize a Machine Learning Microservice API.

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Our project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project we will:
* Test our project code using linting
* Complete a Dockerfile to containerize this application
* Deploy our containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that our code has been tested

---

## Setup the Environment

* Create a virtualenv and activate it by executing `python3 -m venv ~/.devops1`
* Source the virtual environment: `source ~/.devops1/bin/activate`
* Run `make install` to install the necessary dependencies
* Run `make install-hadolint` to setup hadlolint on your local machine for linting docker images
* Run `make lin`' to check for linting of code

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./upload_docker.sh` then `./run_kubernetes.sh`

### Making predictions

* Make predictions once the conatiner is runnig in local or kubernetes cluster by opening a seperate termianl and runnig the file `./make_prediction.sh`
* You can also change inputs in `./make_prediction.sh` to get anothe prediction value. 

### Kubernetes Steps

* Setup and Configure Docker locally - See [Docker Offical documentation](https://docs.docker.com/engine/install/) 
* Setup and Configure Kubernetes locally uisng minikube and kubectl - See [minikube](https://minikube.sigs.k8s.io/docs/start/) and [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl) 
* Create Flask app in Container using docker - See Dockerfile in the project
* Create a Kubernetes Deployment - `kubectl create deployment deployment-name --image=$dockerpath:tag`
* Forward the port - `kubectl port-forward deployment/docker-image-name localport_to_expose:port_on_container`

## Directory Structure

| Directory/File | Description |
| ---- | ----------- |
| `.circleci/config.yml` | CircleCI configuration |
| `model_data` | Trained model data for housing prices in Boston |
| `output_txt_files` | Output logs for Docker and Kubernetes runs |
| `app.py` | The main application file for housing prices in Boston |
| `Dockerfile` | Dockerfile containing the application and its dependencies |
| `make_prediction.sh` | Example Rest call for testing |
| `Makefile` | Build file of the project |
| `requirements.txt` | Python requirements file |
| `run_docker.sh` | Shell script for building and running docker image |
| `run_kubernetes.sh` | Shell script to deploy docker container on Kubernetes cluster |
| `upload_docker.sh` | Shell script for uploading local docker image to dockerhub repository |