FROM node:16-bullseye-slim

ENV NODE_VERSION 16.7.0

COPY ./quasar-test/ /usr/apps

RUN apt-get update && apt-get install gcc-4.9 && apt-get upgrade libstdc++6

CMD ["quasar dev"]
