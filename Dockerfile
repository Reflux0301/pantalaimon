FROM alpine:latest

RUN apk add --no-cache python3-dev py3-pip olm-dev gcc g++ musl-dev cmake make pantalaimon

COPY pantalaimon.conf /pantalaimon.conf

EXPOSE 20662

CMD [ "pantalaimon", "--config", "/pantalaimon.conf"]