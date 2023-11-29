FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ./*.js ./
ENV AMQP_URL=amqp://10.244.0.30:5672
EXPOSE 3000
CMD [ "node", "index.js" ]
