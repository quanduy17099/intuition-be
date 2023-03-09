# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the TypeScript code
# RUN npm run build

# Expose port 8080 for the server to listen on
EXPOSE 8080

# Set the command to start the server
CMD ["npm", "start"]
