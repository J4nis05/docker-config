# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Expose port 3000
EXPOSE 3000

# Set the working directory in the container
WORKDIR /home/node/app

# Copy package.json for dependency installation
COPY ./data/www.j4nis05.ch/package.json ./

# Install dependencies
RUN npm install -g npm-check-updates && \
    npm-check-updates -u && \
    npm install

# Copy the rest of the application files
COPY ./data/www.j4nis05.ch ./

# Production stage for building the application
RUN npm run build

# Set NODE_PATH for production
ENV NODE_PATH=./build

# Command to start your application
CMD ["npm", "run", "dev"]
