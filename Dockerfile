FROM ubuntu:19.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update \
	&& apt install -y \
		software-properties-common \
		build-essential \
		ca-certificates \
		wget

RUN apt update \
	&& apt install -y \
		biber \
		texlive-full \
		python-pygments

RUN apt install -y \
		inotify-tools

RUN apt remove -y python-pygments && \
    apt install -y python3-pygments

RUN apt install -y qt5-default gnuplot