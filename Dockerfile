# Use the official Ubuntu base image
FROM ubuntu



# Install curl to download Node.js and install Node.js and npm
RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean

# Copy package.json and package-lock.json to install dependencies
COPY package*.json package*.json 
COPY package-lock.json package-lock.json
COPY app.js app.js

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .
