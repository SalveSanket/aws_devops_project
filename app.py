from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, welcome to my Flask app, this is showing ci/cd is working!"

@app.route('/about')
def about():
    return "This is a simple Flask application"

if __name__ == '__main__':
    app.run(debug=True)