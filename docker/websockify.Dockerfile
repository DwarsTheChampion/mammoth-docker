FROM alpine:3.20

RUN apk add --no-cache websockify

WORKDIR /app
