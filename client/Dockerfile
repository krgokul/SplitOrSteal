# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app/client
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY client/package*.json /app

# Install app dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY client/ /app

# Expose port 3000 if your client app is running on this port
EXPOSE 3000

# Run the client app when the container launches
CMD ["npm", "start"]
