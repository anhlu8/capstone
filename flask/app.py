from flask import Flask, request
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def hello_world():
    return 'Hello world!!!'


@app.route('/name', methods=["POST"])
def hello_name():
    data = request.get_json()
    return 'Hello, {}!'.format(data.get("name"))


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)
