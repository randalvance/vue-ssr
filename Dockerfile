FROM node:20-alpine

WORKDIR /app

ENV NODE_ENV='production'

COPY ./dist/. ./dist/.
COPY server.js .
COPY package*.json .

RUN npm install --only=production

CMD ["node", "server"]