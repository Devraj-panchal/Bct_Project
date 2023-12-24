# using node alpine as base image
FROM node:16.20.2-alpine

# working dir ./app
WORKDIR /app

# Copy the package.json
COPY ./package.json .

# Install the dependencies
RUN npm install

# Copy the server and ethereum module
COPY . .

# install truffle
RUN npm install -g truffle

# Migrate the contracts on ganache
# RUN truffle migrate --reset

# set the default command
# CMD ["npm","start"]
