from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/comments', methods=['GET'])
def get_comments():
    comments = [
        {'id': 1, 'text': 'Teste Projeto Docker'},
        {'id': 2, 'text': 'Anderson Albuquerque'},
	{'id': 3, 'text': 'Mais cedo ou mais tarde fico intimo do docker'}
    ]
    return jsonify(comments)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
