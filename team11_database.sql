CREATE DATABASE app;

CREATE TABLE users (
 id BIGINT primary key auto_increment,
 username VARCHAR(255),
 password VARCHAR(255),
 first_name VARCHAR(255),
 last_name VARCHAR(255),
 preferences FILESTREAM
 );

CREATE TABLE airport (
name VARCHAR(255),
code VARCHAR(4) primary key,
);

CREATE TABLE boarding_pass (
QR_path VARCHAR(1024) primary key
user BIGINT
FOREIGN KEY (user) REFERENCES users(id)
);

CREATE TABLE stress (
user_id BIGINT,
airport_code VARCHAR(4),
lat FLOAT(10),
long FLOAT(10),
stress_index INT,
PRIMARY KEY (user_id,airport_code),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (airport_code) references airport(code)
);