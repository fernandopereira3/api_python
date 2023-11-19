import flask
from flask import *
from flask_pymongo import PyMongo

app = Flask(__name__)

app.config["MONGO_URI"] = "mongodb://localhost:27017/api_001"
db = PyMongo(app).db

@app.route('/')
def hello_world():
     return render_template('index.html')


@app.route('/pesquisar', methods=['GET'])
def pesquisa():
    alunos = db.pessoas.find({})
    for aluno in alunos:
        return flask.jsonify(aluno['nome'])


if __name__ == '__main__':
   app.run(debug=True)

    
