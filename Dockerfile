FROM node:jessie
EXPOSE 8080/tcp
EXPOSE 3000/tcp

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app/
COPY package.json package-lock.json /usr/local/app/
RUN npm install

RUN mkdir -p /usr/local/app/backend/release
WORKDIR /usr/local/app/backend

COPY upperz-backend/package.json /usr/local/app/backend/
COPY upperz-backend/package-lock.json /usr/local/app/backend/
COPY upperz-backend/portico*.tgz /usr/local/app/backend/
COPY upperz-backend/release/ /usr/local/app/backend/release/
RUN npm install

RUN mkdir -p /usr/local/app/frontend/
WORKDIR /usr/local/app/frontend

COPY upperz-frontend/package.json /usr/local/app/frontend/
COPY upperz-frontend/package-lock.json /usr/local/app/frontend/
COPY upperz-frontend/src/ /usr/local/app/frontend/src/
COPY upperz-frontend/public/ /usr/local/app/frontend/public/
RUN npm install

WORKDIR /usr/local/app/
CMD [ "npm", "run", "start:app" ]