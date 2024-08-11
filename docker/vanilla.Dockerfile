FROM node:20-alpine

ARG DATABASE_URL
ENV DATABASE_URL=${DATABASE_URL}

WORKDIR /app/vanilla

COPY vanilla/package*.json .
RUN npm install

COPY vanilla .
RUN npx prisma generate
RUN npm run build
