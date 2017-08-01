FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Get app files
COPY package.json .

# Get app npm dependencies
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
