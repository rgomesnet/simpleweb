# Specify a base image
FROM node:12.18.3-alpine

# Copy sources file
WORKDIR /app

# Install some dependencies
COPY ./package.json .
RUN yarn install
COPY . .

# Default command
CMD ["yarn", "start"]
