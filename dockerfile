
# Use the Node.js Alpine image as the base image
FROM node:alpine

# Setting working directory inside the container
WORKDIR /usr/src/app

# Copy application code
COPY . /usr/src/app

# Install Angular CLI globally in the container
RUN npm install -g @angular/cli

# Install dependencies for the Angular application
RUN npm install

# Defining the command to run project when the container starts
CMD ["ng", "serve", "--host", "0.0.0.0"]

