import logging
from flask import Flask

logging.basicConfig(filename='/var/log/sample-server/flask.log', level=logging.DEBUG)

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'
