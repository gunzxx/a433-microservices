# mengambil image node:14 dari local, jika tidak ada mengambil dari docker hub
FROM node:14
# mengatur working directory container pada folder /app, jika tidak ada maka akan dibuat seperti perintah mkdir
WORKDIR /app
# menyalin kode pada lokasi saat ini untuk tanda titik (.) ke lokasi tujuan yaitu /app pada container
COPY . /app
# mengatur environment untuk NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db
# menjalankan perintah instalasi dan build pada projek selama proses pembuatan image
RUN npm install --production --unsafe-perm && npm run build
# mengatur/mengekspose port 8080 pada container agar dapat diakses
EXPOSE 8080
# menjalankan perintah npm start ketika container dari image ini dijalankan
CMD ["npm", "start"]