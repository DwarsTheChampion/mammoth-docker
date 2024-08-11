FROM node:20-alpine

ARG DATABASE_URL
ENV DATABASE_URL=${DATABASE_URL}

WORKDIR /app/api

COPY vanilla-api/package*.json .
RUN npm install

COPY vanilla-api .
RUN npx prisma generate
RUN npm run build
