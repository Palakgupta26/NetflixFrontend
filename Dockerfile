FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
ENV MOVIE_CATALOG_SERVICE=http://172.17.0.2:8080
EXPOSE 3000
ENV NODE_ENV=production
CMD ["npm","start"]