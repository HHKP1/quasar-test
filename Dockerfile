FROM node:16-alpine

ENV NODE_VERSION 16.7.0

COPY ./quasar-test/ /usr/apps

CMD ["quasar dev"]
