FROM ubuntu:wily
RUN apt-get update && apt-get -y install python-virtualenv build-essential python-dev nvi git libffi-dev libssl-dev
RUN virtualenv /env && /env/bin/pip install --upgrade pip virtualenv tox
