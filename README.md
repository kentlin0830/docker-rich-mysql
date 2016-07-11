Rich-mysql
============

Example usage: 
     `$ docker run --name rich-mysql -d -p 22:22 -p 80:80 -p 3306:3306 -v /home/kel:/home/kel -e ROOT_PASSWORD=pwd01 kentlin/docker-rich-mysql`

Environment variables
---------------------

 - `ROOT_PASSWORD`: The password for the root user. Defaults to a blank password
 - `MYL_USER`: A user to create that has access to the database specified by `MYSQL_DATABASE`.
 - `MY_PASSWORD`: The password for `MY_USER`. Defaults to a blank password.
 - `MYSQL_DATABASE`: A database to automatically create. If not provided, does not create a database.

