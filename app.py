
#docker run --name some-mysql -e MYSQL_ROOT_PASSWORD="password123" -d mysql:latest
#CREATE TABLE users ( ID int NOT NULL AUTO_INCREMENT, fname varchar(25), lname varchar(25), username varchar(8), password varchar(8), PRIMARY KEY (ID));
#INSERT INTO users (fname, lname, username, password) VALUES ("Sam", "Smith", "samsmith", "passwd02");

from flask import Flask
import mysql.connector


app = Flask(__name__)

@app.route('/')
def linoop():
    return 'Hello, Linoop Class!'

@app.route('/login')
def login_function():
    return 'This is a login page'


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8080, debug=True)

