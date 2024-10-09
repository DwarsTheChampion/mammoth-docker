FROM node:20-alpine

WORKDIR /app

RUN npm install -g prisma

COPY mammoth/prisma prisma
