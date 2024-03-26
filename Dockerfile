#Docker file untuk projek pertama

#menggunakan base image node 14-alpine
FROM node:14-alpine 

#membuat direktori untuk projek kita bernama /app
WORKDIR /app

#menyalin semua berkas yang ada di a433-microservice-proyek-pertama ke working directori
COPY . .

#menentukan agar aplikasi berjalan dalam production mode dengan container item-db sebagai host
ENV NODE_ENV=production DB_HOST=item-db

#menginstal depedencies dan membuild aplikasi
RUN npm install --production --unsafe-perm && npm run build

#menentukan port yang digunakan yaitu 8080
EXPOSE 8080

#menyuruh untuk membuild node
CMD ["npm", "start"]