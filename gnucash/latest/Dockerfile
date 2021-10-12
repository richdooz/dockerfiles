# Run GnuCash in a container
#
# docker run -it \
#	-e DISPLAY=unix$DISPLAY \
#	-v $XAUTHORITY:/root/.Xauthority \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	gnucash-built:latest
#
# Mount $(pwd) as a volume using: -v $(pwd):/src/files

FROM gnucash-base:0
LABEL maintainer "Rich Duszczak (richdooz@gmail.com)"

RUN apt-get install -y git

RUN  mkdir /src \
		&& cd /src \
		&& git clone https://github.com/Gnucash/gnucash \
		&& mkdir build \
		&& cd build \
		&& cmake -DWITH_AQBANKING=false -DWITH_SQL=false ../gnucash \
		&& make

