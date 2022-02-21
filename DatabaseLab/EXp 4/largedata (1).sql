
create table userinfo
(
	user_id int primary key,
	username varchar(10),
	gender char(1),
	age int
)


DELIMITER $$
CREATE FUNCTION  random_string(n INT) RETURNS VARCHAR(255) NO SQL
BEGIN
 DECLARE chars_str VARCHAR(100) DEFAULT 'abcdefghijklmnopqrstuvwxyzABCDEFJHIJKLMNOPQRSTUVWXYZ';
 DECLARE return_str VARCHAR(255) DEFAULT '';
 DECLARE i INT DEFAULT 0;
 WHILE i < n DO
	SET return_str = CONCAT(return_str, SUBSTRING(chars_str, FLOOR(1+RAND()*52),1));
	SET i = i + 1;
 END WHILE;
 RETURN return_str;
END $$

DELIMITER $$
CREATE FUNCTION random_gender( ) RETURNS CHAR(1) NO SQL
NO SQL
BEGIN   
 DECLARE chars_str VARCHAR(10) DEFAULT 'FM';
 DECLARE return_str CHAR(1) DEFAULT '';
 DECLARE i INT DEFAULT 0;
 SET return_str = SUBSTRING(chars_str, ROUND(RAND()+1), 1);
 RETURN return_str;  
END $$


DELIMITER $$
CREATE FUNCTION random_num(min INT, max INT) 
RETURNS INT 
NO SQL
BEGIN   
	 DECLARE i INT DEFAULT 0;  
     SET i = FLOOR(rand()*(max-min)+min);
RETURN i;  
END $$

call  insert_user(1,100000); 
select count(*) from userinfo;

