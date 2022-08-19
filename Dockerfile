FROM node:16-alpine

ENV NODE_VERSION 16.7.0

EXPOSE 8080

COPY . /usr/apps

CMD ["quasar dev"]
