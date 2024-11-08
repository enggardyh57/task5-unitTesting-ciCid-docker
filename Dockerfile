# Gunakan image node sebagai base image
FROM node:18

# Set working directory dalam container
WORKDIR /app

# Copy file package.json dan package-lock.json untuk instalasi dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh source code ke container
COPY . .

# Compile TypeScript menjadi JavaScript
RUN npm run build

# Ekspose port yang akan digunakan oleh aplikasi
EXPOSE 4000

# Perintah untuk menjalankan aplikasi
CMD ["npm", "run", "start"]