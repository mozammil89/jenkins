# FROM node:12
# WORKDIR /usr/src/app
# COPY . .
# RUN yarn 
# RUN yarn build

# EXPOSE 8000
# CMD yarn start

##--------------------------------------

# # Build Stage 1
FROM node:12-alpine AS base
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

# Build Stage 2
FROM node:12-alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install express
COPY --from=base /usr/src/app/dist ./dist
EXPOSE 8000
CMD npm start