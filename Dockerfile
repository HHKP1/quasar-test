FROM node:16-alpine

ENV NODE_VERSION 16.7.0

COPY . /usr/apps

CMD ["quasar dev"]
