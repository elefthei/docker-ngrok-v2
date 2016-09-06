Ngrok v2 docker container
===========================

*Desciption:*

Very minimal docker container for ngrok v2, running from HTTP/HTTPS to HTTP. Based on BusyBox and
centurylink/ngrok, this one uses only two environment variables.

ie: HTTP_PORT = 3000
    HTTP_SERVER = web-server (resolved in /etc/hosts, the web-server hostname)

which is the port ngrok will forward to. It uses ngrok v2 contrary to centurylink/ngrok, which means a lot
of nice features (like non-ncurses API) are lost. But hopefully the lack of logging makes up for the better ngrok engine.

*Example usage:*
`docker run --rm --name ngrok -e "HTTP_PORT=3000" elefthei/ngrok`

*Environment variables:*

* `HTTP_SERVER`
* `HTTP_PORT`

Detailed instructions [here](https://ngrok.com).
