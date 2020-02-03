FROM python:3.6.1

# force Docker to terminate if any steps of a piped command fails
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

WORKDIR /usr/src/app

# install tfswitch command line utility
RUN curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash

RUN pip3 install \
    awscli==1.11.115 \
    terraform-compliance==1.0.59 \
    boto3==1.11.4 \
    beautifulsoup4==4.8.2 \
    requests==2.22.0
