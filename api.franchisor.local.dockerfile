FROM node:12-alpine

RUN mkdir -p /var/www
WORKDIR /var/www

COPY ./franchisor/backend-application/package*.json ./

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "npm", "run", "dev:server" ]
