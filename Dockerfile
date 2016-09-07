FROM busybox:ubuntu-14.04

MAINTAINER Lef Ioannidis

# Install ngrok
ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip /
ADD launch_ngrok.sh /bin/
RUN unzip ngrok-stable-linux-amd64.zip -d /bin && \
 rm -f ngrok-stable-linux-amd64.zip

# Get HTTP_PORT from environment
CMD [ "/bin/launch_ngrok.sh" ]
