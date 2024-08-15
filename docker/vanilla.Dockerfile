FROM node:20-alpine

WORKDIR /app

COPY vanilla/package*.json .
RUN npm install

COPY vanilla .
RUN npx prisma generate
RUN npm run build
