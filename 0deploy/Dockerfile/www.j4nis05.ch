# Stage 1: Base image for dependencies installation and update
FROM node:18-alpine as base

WORKDIR /home/node/app
COPY ./data/www.j4nis05.ch/package.json ./
RUN npm install -g npm-check-updates && \
    npm-check-updates -u && \
    npm install --legacy-peer-deps
COPY ./data/www.j4nis05.ch ./

# Stage 2: Production stage for building the application
FROM base as production

ENV NODE_PATH=./build
RUN npm run build

# Optionally, you can have a third stage for serving the application, like:
FROM nginx:alpine
COPY --from=production /home/node/app/build /usr/share/nginx/html

# Example of serving the application using nginx, you can uncomment and adjust it according to your needs.
