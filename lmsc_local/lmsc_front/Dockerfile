FROM node:latest

WORKDIR /app

COPY ./package.json ./

RUN rm -rf package-lock.json node_modules

RUN npm install
RUN npm install axios

# RUN yarn global add @vue/cli
RUN apt-get update \
    && apt-get install -y

CMD ["npx", "nuxi", "dev", "--https", "--ssl-cert", "/etc/ssl/localhost.pem", "--ssl-key", "/etc/ssl/localhost-key.pem"]
