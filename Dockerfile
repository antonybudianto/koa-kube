FROM node:10-alpine

WORKDIR /usr/src/koa-kube-app

COPY package.json yarn.lock ./

RUN yarn

RUN echo 1

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
