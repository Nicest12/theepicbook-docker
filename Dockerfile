# ---------- Stage 1: Build ----------
FROM node:18-alpine AS builder

WORKDIR /app

# copy package files
COPY package*.json ./

# install dependencies
RUN npm install --production

# copy application code
COPY . .

# ---------- Stage 2: Runtime ----------
FROM node:18-alpine

WORKDIR /app

# copy built app from builder stage
COPY --from=builder /app /app

# expose application port
EXPOSE 3000

# start application
CMD ["node", "server.js"]
