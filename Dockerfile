# Use a more recent Node.js image
FROM node:18.21.0 # Replace with the latest version if available

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the local code to the container image.
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the web service on container startup.
CMD [ "node", "app.js" ]
