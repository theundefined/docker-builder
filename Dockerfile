FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
	build-essential \
	wget
RUN mkdir -p wkhtmltox/usr wkhtmltox/DEBIAN
RUN wget http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz -O - |tar xvJ -C wkhtmltox/usr -f -
