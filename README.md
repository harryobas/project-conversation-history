# Introduction
A Ruby on Rails application that provides functionality for project conversation. It allows users to leave comments and as well as change status of the project.

## Requirements
Ruby 3.3.0 
Rails 6.1.5

## How to run 

### Docker 
This app is dockerized to enable both ease of execution and deployment.To install/run on Linux, make sure to have both docker and docker-compose installed on your machine and follow the instructions below:

1. clone the repository

```bash
git clone https://github.com/harryobas/project-conversation-history.git
cd project-conversation-history
```

2. build docker image and start container

```bash
make run
```

3. access the application on: localhost:3000/
