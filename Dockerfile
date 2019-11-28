FROM debian:unstable

WORKDIR /odisplay
COPY server.tar.gz .
RUN tar xvzf server.tar.gz
CMD ["./server"]
