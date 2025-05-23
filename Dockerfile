# Use Node.js 18 Alpine as the base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Install Ionic CLI globally
RUN npm install -g @ionic/cli

# Copy the rest of the application code
COPY . .

# Build the Ionic app for production
RUN npm run build

# Install a lightweight web server to serve static files
RUN npm install -g serve

# Expose port 5000
EXPOSE 5000

# Command to serve the built app from the 'dist' folder
CMD ["serve", "-s", "/app/dist", "-l", "5000"]