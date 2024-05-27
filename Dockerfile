FROM node:10

RUN mkdir -p /app
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY index.js /app/
EXPOSE 8080
CMD ["node", "index.js"]