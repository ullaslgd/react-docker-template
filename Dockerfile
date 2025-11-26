#---- Build Stage ----
FROM node:20-alpine AS build

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

#EXPOSE port
EXPOSE 5173

#start 
CMD ["npm","run","dev"]


