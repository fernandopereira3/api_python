FROM mongo:latest

WORKDIR /api

COPY . .

CMD [ "use api_001" , "mongoimport --host=localhost -d api_001 -c pessoas --type csv --file api/alunos.csv --headerline" ] 

EXPOSE 27017
