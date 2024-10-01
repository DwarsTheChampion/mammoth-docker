FROM node:20-alpine

WORKDIR /app

ARG PACKAGE

COPY vanilla/package*.json .
COPY vanilla/packages/${PACKAGE}/package*.json packages/${PACKAGE}/

COPY vanilla/tsconfig.json .
COPY vanilla/packages/shared/ packages/shared/
RUN npm ci

COPY vanilla/prisma .
RUN npx prisma generate

COPY vanilla/packages/${PACKAGE}/ packages/${PACKAGE}/
WORKDIR /app/packages/${PACKAGE}
RUN npm run build
