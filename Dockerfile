FROM node:10
WORKDIR /usr/src/app
ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json .
RUN npm install
COPY . .
CMD ["node", "sample/Sample.js"]