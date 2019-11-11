FROM node:12-alpine
WORKDIR /usr/src/app
COPY . .
COPY package.json ./
RUN npm install 
RUN npm run build
EXPOSE 8000
CMD npm start
