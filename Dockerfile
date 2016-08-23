FROM busybox:ubuntu-14.04

MAINTAINER Lef Ioannidis

# Install ngrok
ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip /
RUN unzip ngrok-stable-linux-amd64.zip -d /bin && \
 rm -f ngrok.zip && \
 touch /.ngrok

# Get HTTP_PORT from environment
CMD /bin/ngrok http $HTTP_PORT
