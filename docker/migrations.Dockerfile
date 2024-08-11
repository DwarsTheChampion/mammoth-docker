FROM node:20-alpine

WORKDIR /app

RUN npm install -g prisma

COPY vanilla/prisma prisma
