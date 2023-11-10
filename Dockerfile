FROM mongo:latest

WORKDIR /api

COPY sentenciados.csv /api/

RUN mongoimport --host=localhost -d sentenciados -c pessoas --type csv --file sentenciados.csv --headerline
