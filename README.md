[![CircleCI](https://circleci.com/gh/JeamBeamcim/udacity-my-capstone-project.svg?style=svg)](https://circleci.com/gh/JeamBeamCim/udacity-my-capstone-project/)

## Cloud DevOps Engineer Capstone Project

[Github Repo](https://github.com/eamBeamCim/udacity-my-capstone-project.git)

### Configure environment variables on CircleCI

The following environment variablesz must be set for the project on CircleCI via the project settings page, before the project can be built successfully.

| Variable                 | Description                                                                                                                                                     |
| ------------------------ |-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `AWS_ACCESS_KEY_ID`      | Used by the AWS CLI                                                                                                                                             |
| `AWS_SECRET_ACCESS_KEY ` | Used by the AWS CLI                                                                                                                                             |
| `AWS_DEFAULT_REGION`     | Used by the AWS CLI. Project value: "us-east-1"                                                                                                                 |
| `AWS_ECR_URL`            | Identifies the AWS ECR docker image registry that the docker image will be pushed to, in the format `AWS_ACCOUNT_ID`.dkr.ecr.`AWS_DEFAULT_REGION`.amazonaws.com |

### LINKS

- [Github Repo](https://github.com/eamBeamCim/udacity-my-capstone-project.git)
