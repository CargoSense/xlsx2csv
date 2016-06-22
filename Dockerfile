from ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LS_ALL en_US.UTF-8

RUN apt-get update -y
RUN apt-get install wget python3 -y
RUN mkdir xlsx2csv

WORKDIR xlsx2csv

ADD . .

ENTRYPOINT ["python3", "xlsx2csv.py"]
