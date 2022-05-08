# stage 1 building the code
FROM node:17 as builder 
WORKDIR /usr/app
COPY package*.json ./ 
RUN npm install 
RUN apt-get -qq update
RUN apt-get -qq upgrade
RUN apt-get -qq install vim
COPY . . 
CMD npm run build  

# stage 2
FROM node:17
WORKDIR /usr/app
COPY package*.json ./ 
RUN npm install --production 

# COPY --from=builder /usr/app/dist ./dist

COPY .env .

EXPOSE 8080 
CMD npm run start:prod