FROM node:lts-jessie-slim
EXPOSE 8080/tcp

RUN mkdir -p /usr/local/app/release/upperz

COPY upperz-backend/pack*.json /usr/local/app/
COPY upperz-backend/portico*.tgz /usr/local/app/
COPY upperz-backend/release/ /usr/local/app/release/
COPY upperz-frontend/build/ /usr/local/app/release/upperz/

WORKDIR /usr/local/app/
RUN npm install
WORKDIR /usr/local/app/release
CMD [ "node", "upperz-server.js" ]