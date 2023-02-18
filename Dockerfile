# Use an official Node runtime as a parent image
FROM node:14.15.4-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the project files to the working directory
COPY . .

# Build the project
RUN npm run build

# Expose port 3000 for the React app
EXPOSE 3000

# Start the React app
CMD ["npm", "run", "start"]