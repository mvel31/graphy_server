FROM node:20-alpine

WORKDIR /app

COPY package.json .
# Alpine usa npm sin problemas para instalar tus dependencias de Node
RUN npm install

COPY graphserver.js .
COPY UScities.json .

EXPOSE 4000

CMD ["node", "graphserver.js"]
