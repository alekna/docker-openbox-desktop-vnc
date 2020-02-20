FROM debian:buster

EXPOSE 5900 

ENV HOME /root
ENV TZ Etc/UTC
ENV SHELL /bin/bash
ENV PS1='# '

RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y tigervnc-standalone-server openbox tint2 pcmanfm xfce4-terminal supervisor procps curl; \
    apt-get clean
RUN mkdir /root/.vnc; \
    echo "root" | vncpasswd -f > /root/.vnc/passwd; \
    chmod 600 /root/.vnc/passwd

ADD etc/xdg/pcmanfm /root/.config/pcmanfm
ADD etc /etc

CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
