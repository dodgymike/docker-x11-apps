FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -qqy openjdk-8-jdk
RUN apt-get install -qqy x11-apps
RUN apt-get -y install sudo
RUN apt-get -y install wget
RUN apt-get -y install xz-utils
RUN apt-get -y install python
RUN apt-get -y install python-pip

RUN useradd -m arduinoide
ENV HOME /home/arduinoide

RUN mkdir /software
WORKDIR /software

RUN wget https://downloads.arduino.cc/arduino-1.8.12-linux64.tar.xz -O arduino-1.8.12-linux64.tar
RUN tar xvf arduino-1.8.12-linux64.tar
RUN rm arduino-1.8.12-linux64.tar

RUN pip install pyserial

RUN adduser arduinoide dialout
USER arduinoide

WORKDIR /software/arduino-1.8.12

CMD ./arduino

