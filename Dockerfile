FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
ENV NODE_ENV=production
CMD ["node", "index.js"]
