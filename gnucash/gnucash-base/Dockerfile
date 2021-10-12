# Run GnuCash in a container
#
# docker run -it \
#	-e DISPLAY=unix$DISPLAY \
#	-v $XAUTHORITY:/root/.Xauthority \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	gnucash-built:latest
#
# Mount $(pwd) as a volume using: -v $(pwd):/src/files

FROM ubuntu:bionic
LABEL maintainer "Rich Duszczak (richdooz@gmail.com)"

ARG DEBIAN_FRONTEND="noninteractive" 
ENV TZ=America/New_York
RUN apt-get update -q && apt-get install -y -q \
		wget \
		libglib2.0-dev \
		pkg-config \
		cmake \
		gcc \
		g++ \
		libxml2-dev \
		libxslt1-dev \
		xsltproc \
		webkit2gtk-4.0-dev \
		swig \
		guile-2.2-dev \
		gwenhywfar-tools \
		libofx-dev \
		libgtest-dev \
		libdbi-dev \
		libxml2-utils \
		libboost-dev \
		libboost-date-time-dev \
		libboost-filesystem-dev \
		libboost-locale-dev \
		libboost-regex-dev \
		libboost-program-options-dev \
		libboost-system-dev \
		git \
		language-pack-en \
		language-pack-de \
		language-pack-fr \
		tzdata
