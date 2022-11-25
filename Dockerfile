FROM node:16-alpine
WORKDIR /app
COPY package.json /app/package.json
RUN npm install
COPY public ./public
COPY src ./src
EXPOSE 80
ENTRYPOINT ["yarn", "start"]
