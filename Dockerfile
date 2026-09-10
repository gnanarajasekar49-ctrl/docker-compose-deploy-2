# 1. Use lightweight Node.js base image
FROM node:18-alpine

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# 4. Copy application source code
COPY . .

# 5. Expose application port
EXPOSE 3000

# 6. Start the server
CMD ["node", "server.js"]
