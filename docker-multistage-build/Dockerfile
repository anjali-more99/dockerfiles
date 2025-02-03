# Step 1: Build Stage (to install dependencies and build the app)
FROM node:16 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json for efficient caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application (optional: add build command if using frameworks like React or TypeScript)
# For a basic Node.js app, you might not have a build step
# RUN npm run build

# Step 2: Production Stage (Use a smaller base image)
FROM node:16-slim

# Set the working directory inside the container
WORKDIR /app

# Copy only the necessary files from the builder stage
COPY --from=builder /app /app

# Install only the production dependencies (skip devDependencies)
RUN npm ci --only=production

# Expose the app's port
EXPOSE 3000

# Command to run the app (run the 'start' script defined in package.json)
CMD ["npm", "start"]


