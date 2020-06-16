FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -qqy x11-apps
RUN apt-get -y install sudo
RUN apt-get -y install wget
RUN apt-get -y install xz-utils
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install software-properties-common

RUN useradd -m kicad
ENV HOME /home/kicad

RUN add-apt-repository --yes ppa:js-reynaud/kicad-5.1
RUN apt-get -y install --install-recommends kicad

USER kicad

WORKDIR /home/kicad

CMD kicad

