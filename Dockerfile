# Get base image from node
FROM node:14.21-alpine

# Change workdir to app
WORKDIR /app

# Copy package.json first to use docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source file
COPY . .

# Expose port
EXPOSE 3000

# Run app
CMD [ "npm", "start" ]