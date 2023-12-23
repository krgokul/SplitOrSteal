# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app/server
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY server/package*.json /app

# Install app dependencies
RUN npm install

WORKDIR /app/src

# Copy the current directory contents into the container at /app
COPY server/ /app

# Expose port 5000 if your server app is running on this port
EXPOSE 5000

# Run the server app when the container launches
CMD ["npm", "start"]
