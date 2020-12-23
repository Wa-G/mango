links
https://www.w3schools.com/python/python_mysql_select.asp
https://www.w3schools.com/python/showpython.asp?filename=demo_mysql_connection


### web
docker build -t ozzie6935/web:latest .
docker run --name web -h webhost -p 8080:8080 --link mysql:mysql ozzie6935/web


### mysql
# docker run --name mysql -h mysqlhost -e MYSQL_ROOT_PASSWORD="password123" -d mysql:latest
docker exec -it mysql bash
mysql -p


CREATE DATABASE mangodb;
USE mangodb;
CREATE TABLE users ( ID int NOT NULL AUTO_INCREMENT, fname varchar(25), lname varchar(25), username varchar(8), password varchar(8), PRIMARY KEY (ID));
INSERT INTO users (fname, lname, username, password) VALUES ("John", "Doe", "johndoe1", "passwd01");
INSERT INTO users (fname, lname, username, password) VALUES ( "Sam", "Smith", "samsmith", "passwd02");
SELECT * FROM users;



git status; git add --all; git commit -am `date +\%Y-\%m-\%d_\%H-\%M-\%S-\%p`; git push



###### ENVIRONMENT variables
# runtime
docker stop web; docker rm web
docker build -t ozzie6935/web:latest .
docker run --name web -h webhost -p 8080:8080 --link mysql:mysql -e city=Edinburgh -e ENVIRON=QA ozzie6935/web

# runtime
docker stop web; docker rm web
docker build --build-arg city=Edinburgh -t ozzie6935/web:lastest .
docker run --name web -h webhost -p 8080:8080 --link mysql:mysql ozzie6935/web




git status; git add --all; git commit -am `date +\%Y-\%m-\%d_\%H-\%M-\%S-\%p`; git push

#### Docker builer for file specific names
docker build --build-arg city=Edinburgh -t ozzie6935/web:lastest -f Dockerfile.dev .



###### VOLUMES
docker run --name web -h webhost -p 8080:8080 \
--link mysql:mysql \
--volume='/Users/osmanghani/git/mango:/usr/src/app' \
--volume='/usr/src:/etc' \
ozzie6935/web
