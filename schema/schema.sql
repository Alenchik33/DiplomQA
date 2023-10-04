'version: '3.7''
services:
    mysql:
    image: mysql:8.0.18
    ports:
      - '3306:3306'
      volumes:
      - ./schema:/docker-entrypoint-initdb.d
    environment:
      - MYSQL_RANDOM_ROOT_PASSWORD=yes
      - MYSQL_DATABASE=app
      - MYSQL_USER=app
      - MYSQL_PASSWORD=pass
