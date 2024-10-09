FROM node:20-alpine

WORKDIR /app

ARG PACKAGE

COPY mammoth/package*.json .
COPY mammoth/packages/${PACKAGE}/package*.json packages/${PACKAGE}/

COPY mammoth/tsconfig.json .
COPY mammoth/packages/shared/ packages/shared/
RUN npm ci

COPY mammoth/prisma .
RUN npx prisma generate

COPY mammoth/packages/${PACKAGE}/ packages/${PACKAGE}/
WORKDIR /app/packages/${PACKAGE}
RUN npm run build
