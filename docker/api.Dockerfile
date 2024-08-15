FROM node:20-alpine

WORKDIR /app

COPY vanilla-api/package*.json .
RUN npm install

COPY vanilla-api .
RUN npx prisma generate
RUN npm run build
