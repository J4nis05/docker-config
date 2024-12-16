FROM node:18-alpine

EXPOSE 3000

WORKDIR /home/node/app

COPY ./data/www.j4nis05.ch/package.json ./

RUN npm install -g npm-check-updates && \
    npm-check-updates -u && \
    npm install

COPY ./data/www.j4nis05.ch ./

RUN npm run build

ENV NODE_PATH=./build

CMD ["npm", "run", "dev"]
