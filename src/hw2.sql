
skypro=# SELECT * FROM employee;
skypro=# INSERT INTO employee(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES('Nikolay', 'Popov', 'male', 58);

skypro=# INSERT INTO employee(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES('Denis', 'Ivanov', 'male', 21);

skypro=# SELECT * FROM employee;

skypro=# SELECT first_name AS Имя,
skypro-# last_name AS Фамилия
skypro-# FROM employee;

skypro=# SELECT * FROM employee
skypro-# WHERE age < 30 OR age > 50;


skypro=# SELECT * FROM employee
skypro-# WHERE age
skypro-# BETWEEN 30 AND 50;


skypro=# SELECT * FROM employee
skypro-# ORDER BY last_name DESC;


skypro=# SELECT * FROM employee
skypro-# WHERE first_name LIKE '%_____%';


skypro=# UPDATE employee
skypro-# SET first_name = 'Pavel'
skypro-# WHERE id = 1;

skypro=# UPDATE employee
skypro-# SET first_name = 'Denis'
skypro-#  WHERE id = 5;

skypro=# SELECT * FROM employee;

skypro=# SELECT first_name AS Имя,
skypro-# SUM(age) AS Суммарный_возраст
skypro-# FROM employee GROUP BY Имя;


skypro=# SELECT first_name, age
skypro-# FROM employee
skypro-# WHERE age =(
skypro(# SELECT MIN(age)
skypro(# FROM employee
skypro(# );

skypro=# SELECT first_name AS Имя,
skypro-# MAX(age) AS Максимальный_возраст
skypro-# FROM employee
skypro-# GROUP BY Имя
skypro-# HAVING COUNT(first_name)>1
skypro-# ORDER BY MAX(age);















































