<include a CircleCI status badge, here>

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/daviinaa/MachineLearningP4/tree/master.svg?style=svg&circle-token=57cb87baa8ebe71cb843b3b94d4142a9b02b16a9)](https://dl.circleci.com/status-badge/redirect/gh/daviinaa/MachineLearningP4/tree/master)

## Project Overview

The Machine learning project contains a Machine Learning Microservice, built on **Scikit-Learn**. It contains a model that predicts house prices in Boston. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

## What does this project do?

- Run a docker container
- Upload container into a public registry (hub.docker.com)
- Run the deployed application in a Kubernetes cluster
- Integrate with CircleCI for continuous integration

## Requirements
 - Python 3.7

## START HERE

### dont forget to
- Fork this repo and clone it to your local workstation (very important)

### Step 1: Install dependencies
- create a venv called .docker by runing "python3 -m venv ~/.docker" in your terminal orrr see optional step below:
- Set up the environment by running `make setup`. This will create a virtual environment in your home directory called `.devops`
- Install dependencies by running `make install`
- (Optionally) Lint application (requires hadolint)

### Step 2: Run Docker container
- Run the application on docker by calling `./run_docker.sh`

### Step 3: Upload to Docker Hub
- In the `./upload_docker.sh` file, edit the dockerpath (line 8) and change the docker username to a personalized one (or leave it as is, to use the public "daviinaa/mlp4"
- To upload to docker hub, run `./upload_docker.sh`

### Step 4: Kubernetes deployment
- To deploy to kubernetes, run `./run_kubernetes.sh`
# it is important to make sure that you have a fast and stable internet while running thi sparticular sterp, else you may encounter an (imagepullbackoff) error.
HAPPY CODING!