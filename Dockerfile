# Specify a base image
FROM node:12.18.3-alpine

# Copy sources file
WORKDIR /app
COPY . .

# Install some dependencies
RUN yarn install

# Default command
CMD ["npm", "start"]
