FROM node:20-alpine

WORKDIR /usr/src/app

# Install only production dependencies first to leverage Docker cache
COPY package*.json ./
RUN npm install --omit=dev

# Copy application source
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
