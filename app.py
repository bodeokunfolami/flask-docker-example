from flask import Flask, render_template
import os
import socket

app: Flask = Flask(__name__)


@app.route('/')
def home() -> str:
    title: str = "Welcome to Flask and Docker Example"
    return render_template('home.html', title=title)


if __name__ == '__main__':
    app.run(host='0.0.0.0')
