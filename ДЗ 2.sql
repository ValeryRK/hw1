-- Практическое задание по теме “Управление БД”
-- 1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
user=root
password=

/*
Создала файл,просто mysql не работает, приходится вводить mysql -u root -p, иначе выдает ошибку:
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: NO)
*/


-- 2. Сздайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
mysql -u root -p    
CREATE DATABASE example;
CREATE DATABASE sample;
USE example;
CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(255) COMMENT 'Имя пользователя');

-- 3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
mysqldump -u root -p example > sample.sql
mysql -u root -p sample < sample.sql  
mysql -u root -p
SHOW DATABASES;
DESCRIBE sample.users;

