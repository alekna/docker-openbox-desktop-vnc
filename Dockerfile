FROM debian:bookworm

EXPOSE 5900 

ENV HOME /root
ENV TZ Etc/UTC
ENV SHELL /bin/bash
ENV PS1='# '
ENV DEBIAN_FRONTEND=noninteractive
ENV PASSWORD="root"

RUN apt-get update -qq; \
    apt-get upgrade -yqq; \
    apt-get install -yqq tigervnc-standalone-server openbox tint2 pcmanfm xfce4-terminal supervisor procps curl telnet iproute2; \
    apt-get clean
RUN mkdir /root/.vnc; \
    echo $PASSWORD | vncpasswd -f > /root/.vnc/passwd; \
    chmod 600 /root/.vnc/passwd

ADD etc/xdg/pcmanfm /root/.config/pcmanfm
ADD etc /etc

CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
