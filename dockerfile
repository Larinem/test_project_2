FROM node:14.0.0

WORKDIR /app

COPY . .

WORKDIR /app/client

RUN npm install

RUN npm dev

WORKDIR /app/server

RUN npm install

CMD [ "npm", "start"]

EXPOSE 8000