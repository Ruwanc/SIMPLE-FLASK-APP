from flask import Flask
from random import choice

app = Flask(__name__)

@app.route('/')
def hello():
    booksArray=['When The Moon Hatched', 'The Alchemist', 'The Little Prince','If Tomorrow Comes','The Da Vinci Code']
    return "<h3>Your book recommendation for Today is '"+choice(booksArray)+"'.</h3>"
    #return "<h3>Today book recommendation is 'The Alchemist' by Paulo Coelho</h3>"
    #return 'Hello World'


if __name__ == '__main__':
    app.run(debug=True)