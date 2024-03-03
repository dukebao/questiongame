# Use an official MySQL image as a base image
FROM mysql:latest

# Set the MySQL root password (change 'password' to your desired password)
ENV MYSQL_ROOT_PASSWORD=dukebao

# Expose MySQL port
EXPOSE 6000

# (Optional) Create a new database and user (change 'mydatabase', 'myuser', and 'mypassword' to your desired values)
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# (Optional) Load SQL scripts to initialize the database (place your SQL scripts in the same directory as this Dockerfile)
COPY ./database/init.sql /docker-entrypoint-initdb.d/

# (Optional) Set character set and collation for the database
ENV MYSQL_CHARSET=utf8mb4
ENV MYSQL_COLLATION=utf8mb4_unicode_ci
