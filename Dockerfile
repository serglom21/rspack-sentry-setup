# Use a Node.js base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY ./ ./

# Build the application using rspack
RUN npm run build

# Expose the port your application will run on (if applicable)
EXPOSE 8080

# or the port your app uses
# Command to run the application (adjust as needed)
CMD ["npm", "run", "dev"]