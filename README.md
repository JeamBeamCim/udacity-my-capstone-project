[![CircleCI](https://circleci.com/gh/JeamBeamCim/udacity-my-capstone-project.svg?style=svg)](https://circleci.com/gh/JeamBeamCim/udacity-my-capstone-project/)

## Cloud DevOps Engineer Capstone Project

[Github Repo](https://github.com/JeamBeamCim/udacity-my-capstone-project.git)

### Configure environment variables on CircleCI

The project includes the following main tasks:

* Initialize the Python virtual environment:  `make setup`
* Install all necessary dependencies:  `make install`
* Test the project's code using linting:  `make lint`
    * Lints shell scripts, Dockerfile and python code
* Create a Dockerfile to "containerize" the [application](app/app.py): [Dockerfile](app/Dockerfile)
* Deploy to a public Docker Registry:
  [Docker Hub](https://hub.docker.com/repository/docker/gampie/hello-app) the containerized application
* Deploy a Kubernetes cluster:  `make eks-create-cluster`
* Deploy the application:  `make k8s-deployment`
* Update the app in the cluster, using a rolling-update strategy:  `make rolling-update`
* Delete the cluster:  `make eks-delete-cluster`

The CirclCI pipeline([config.yml](.circleci/config.yml)) will execute the following steps automatically:

* `make setup`
* `make install`
* `make lint`
* Build and publish the container image

The following environment variables must be set for the project on CircleCI via the project settings page, before the project can be built successfully.

| Variable                 | Description                                     |
|--------------------------|-------------------------------------------------|
| `AWS_ACCESS_KEY_ID`      | Used by the AWS CLI                             |
| `AWS_SECRET_ACCESS_KEY ` | Used by the AWS CLI                             |
| `AWS_DEFAULT_REGION`     | Used by the AWS CLI. Project value: "us-east-1" |
| `DOCKER_USERNAME`        | For pushing docker hub                          |
| `DOCKER_PASSWORD`        | For pushing docker hub                          |

### LINKS

- [Github Repo](https://github.com/JeamBeamCim/udacity-my-capstone-project.git)
