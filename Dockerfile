FROM alpine:latest

RUN apk add --no-cache python3-dev py3-pip olm-dev gcc g++ musl-dev cmake make

RUN pip install pantalaimon --break-system-packages

COPY pantalaimon.conf /pantalaimon.conf

EXPOSE 20662

CMD [ "pantalaimon", "--config", "/pantalaimon.conf"]