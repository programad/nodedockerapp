# select image
FROM node:argon

# create app directory
RUN mkdir  -p /usr/src/app
WORKDIR /usr/src/app

# install app dependencies
COPY package.json /usr/src/app
RUN npm install

# bundle app source
COPY . /usr/src/app

# expose port
EXPOSE 8080

#define command
CMD ["npm", "start"]