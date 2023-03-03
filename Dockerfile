FROM node:18.14-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY server.js ./

COPY karina.mp4 ./

CMD npm start