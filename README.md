# ml-microservice-kubernetes
Operationalize a Machine Learning Microservice API

[![pascalito007](https://circleci.com/gh/pascalito007/ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)

## Overview

This project project is to operationalize a Machine Learning Microservice API. 

There is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 
The Python flask app called `app.py` serves out predictions (inference) about housing prices through API calls.

## Project files

1. `.circleci/config.yml`: Circleci required configuration file for the pipeline
2. `Makefile`: Includes environment setup and lint tests
3. `app.py`: The laskapp file
4. `Dockerfile`: To containerize the flaskapp application
5. `docker_out.txt` and `kubernetes_out.txt`: Some sample results of predictions
6. `run_docker.sh`: Docker running locally
7. `run_kubernetes.sh`: Tags and uploads an image to Docker Hub
8. `upload_docker.sh`: Tags and uploads an image to Docker Hub

## Setup your environment

* Create a virtualenv and activate it

```bash
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

* Run `make install` to install the necessary dependencies

While you still have your `.devops` environment activated, install:
* Docker
* Hadolint
* Kubernetes ([Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) if you want to run Kubernetes locally)

### Running `app.py`

1. Run in Docker:  `./run_docker.sh`
2. Run in Kubernetes:  `./run_kubernetes.sh`

## The front end application
There is a front end application that contains an interface for user to make some prediction, [available at this repository](https://github.com/pascalito007/prediction-front) 

