# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the dependencies in the container
RUN npm install

# Copy the application code into the container
COPY . .

# Expose port 8080 to make it accessible from outside the container
EXPOSE 80

# Run the app when the container starts
CMD ["npm", "start"]
