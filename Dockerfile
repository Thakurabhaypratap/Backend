# Use the Node.js LTS image as the base
FROM node:lts

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Set the default command to start the app
CMD ["npm", "start"]
