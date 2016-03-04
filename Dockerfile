FROM ubuntu:wily
RUN apt-get update && apt-get -y install python-virtualenv build-essential python-dev nvi
RUN virtualenv /env
