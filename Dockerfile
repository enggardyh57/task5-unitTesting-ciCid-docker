FROM node:16-alpine

WORKDIR /app

# Salin package.json dan package-lock.json ke dalam image
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin semua file dari src ke dalam image
COPY src/ ./src

# Expose port yang akan digunakan
EXPOSE 4000

# Perintah untuk menjalankan aplikasi
CMD ["npm", "start"]
