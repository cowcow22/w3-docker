# Gunakan image Node.js sebagai base
FROM node:20

# Set working directory
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin semua file dari host ke container
COPY . .

# Expose port 3000
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "run", "dev"]
