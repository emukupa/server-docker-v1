FROM node:17 as builder 
WORKDIR /usr/app
COPY package*.json ./ 
RUN npm install 
COPY . . 
CMD npm run build