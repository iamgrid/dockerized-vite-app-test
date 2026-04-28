# Use Node base image
FROM node:24-alpine

# Enable pnpm via corepack
RUN corepack enable

# Set working directory
WORKDIR /app

# Copy package files first (better caching)
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install

# Copy the rest of the app
COPY . .

# Expose Vite port
EXPOSE 5173

# Start dev server
CMD ["pnpm", "dev", "--host"]