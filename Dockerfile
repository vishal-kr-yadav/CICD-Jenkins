FROM ubuntu:latest
MAINTAINER Vishal Yadav "vishal.y@thirdeyedata.io"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
ADD . /CICD-Jenkins
WORKDIR /CICD-Jenkins
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["helloWorld.py"]