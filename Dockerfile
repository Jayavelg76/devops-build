# Use a lightweight Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the app files
COPY . .

# Build the app
RUN npm run build

# Serve the app using serve
RUN npm install -g serve

# Expose the port
EXPOSE 80

# Start the application
CMD ["serve", "-s", "build", "-l", "80"]

