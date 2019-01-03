# Openbox virtual desktop running in Docker container
[![](https://images.microbadger.com/badges/image/alekna/openbox-desktop-vnc.svg)](https://microbadger.com/images/alekna/openbox-desktop-vnc "Get your own image badge on microbadger.com")

Use VNC Viewer to access the desktop with ``root`` as the default password.

To change VNC password run ``vncpasswd``

Configurable variables
* ``GEOMETRY`` Specify the size of the desktop to be created. Default is ``1024x768``
* ``TZ`` Specify timezone. Default: ``Etc/UTC``

![Screenshot](http://assets.alekna.org/github/docker-openbox-desktop-vnc-screenshot.png "Screenshot")
