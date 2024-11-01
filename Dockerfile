FROM node:20.18-bullseye AS build
WORKDIR /usr/src/app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .
CMD ["npm", "run", "dev"]
EXPOSE 3039