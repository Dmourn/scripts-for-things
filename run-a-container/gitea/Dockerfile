FROM alpine:latest

RUN apk update && apk upgrade && apk add gitea

ENTRYPOINT ["su","gitea","-c","gitea"]
