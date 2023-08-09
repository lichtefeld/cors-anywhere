FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
# Production ?
# RUN npm ci --omit=dev

COPY . .

EXPOSE 8080
CMD "node server.js"