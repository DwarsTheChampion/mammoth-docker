FROM node:20-alpine

ARG DATABASE_URL
ENV DATABASE_URL=${DATABASE_URL}

WORKDIR /app

RUN npm install -g prisma

COPY vanilla/prisma prisma
