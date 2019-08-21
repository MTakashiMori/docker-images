FROM alpine AS os

RUN apk add --update --no-cache \
  bash curl ca-certificates openssl openssh git tzdata openntpd nano \
  nodejs \
  npm \
  yarn

EXPOSE 8080   