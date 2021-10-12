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

RUN  mkdir /src
WORKDIR /src
RUN  git clone https://github.com/richdooz/gnucash
RUN  cd gnucash ; git checkout 4.8a-rich0.1
RUN  mkdir build
WORKDIR build
RUN  cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DWITH_AQBANKING=false -DWITH_SQL=false ../gnucash
RUN  make
#RUN  make check

#ENTRYPOINT ["/usr/local/bin/gnucash"]

