FROM golang:buster

COPY ./build.sh /root/build.sh
RUN chmod +x /root/build.sh
RUN mkdir /root/build
WORKDIR /root/build

CMD /root/build.sh