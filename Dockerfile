FROM alpine:3.15

ENV NODE_VERSION 18.7.0

COPY ./quasar-test/ /usr/apps

RUN apt-get update && apt-get install gcc-4.9 && apt-get upgrade libstdc++6

CMD ["quasar dev"]