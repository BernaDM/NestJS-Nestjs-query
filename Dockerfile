
FROM node:16.13 AS development

WORKDIR /usr/src/app


COPY package*.json ./
COPY yarn.lock ./


RUN yarn


COPY . .


CMD ["yarn", "start:dev"]


FROM node:16.13 AS production

WORKDIR /usr/src/app


COPY package*.json ./
COPY yarn.lock ./


RUN yarn


COPY . .


RUN yarn build
