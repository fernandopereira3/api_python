FROM mongo:latest

WORKDIR /api

COPY alunos.csv /api

RUN mongoimport --host=localhost -d alunos -c pessoas --type csv --file alunos.csv --headerline
