# Get node 14 from docker hub
FROM node:14

# Change workdirr to /app
WORKDIR /app

# Copy all source code to current dir
COPY . .

# Add ENV NODE_ENV
ENV NODE_ENV=production 
# Add ENV DB_HOST
ENV DB_HOST=item-db

# Install dependencies
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Run npm start as entry point
ENTRYPOINT [ "npm", "start" ]


