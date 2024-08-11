FROM python:3.13-rc-alpine

RUN apk add --no-cache websockify

WORKDIR /app
