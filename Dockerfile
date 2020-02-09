FROM debian:buster

EXPOSE 5900 

ENV HOME /root
ENV TZ Etc/UTC
ENV SHELL /bin/bash
ENV PS1='# '
ENV SCREEN 1920x1080x24
ENV SCALE 1

RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y xvfb x11vnc openbox tint2 pcmanfm ttf-dejavu xfce4-terminal supervisor procps curl; \
    apt-get clean

ADD etc/xdg/pcmanfm /root/.config/pcmanfm
ADD etc /etc

CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
