DROP DATABASE IF EXISTS COMP3095;

CREATE DATABASE IF NOT EXISTS COMP3095;
USE COMP3095;
GRANT ALL ON COMP3095.* TO 'root'@'localhost'; 

CREATE TABLE USERS 
( 
	id int(11) AUTO_INCREMENT PRIMARY KEY, 
	firstname varchar(255),
	lastname varchar(255),
	email varchar(255), 
	role varchar(20),
	created timestamp default current_timestamp,
	password varchar(20)	
);

INSERT INTO `USERS` (`firstname`, `lastname`, `email`, `role`, `password`) VALUES
('Chris', 'Bui', 'admin@isp.net', 'admin', 'P@ssword1');
INSERT INTO `USERS` (`firstname`, `lastname`, `email`, `role`, `password`) VALUES
('Minh', 'Tran', 'user1@gmail.com', 'user', 'P@sswordUser1');

select * from users where email = 'admin@isp.net' and password = 'P@ssword1'; 



