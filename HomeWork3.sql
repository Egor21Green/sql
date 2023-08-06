-- 1 - Отсортеруйте данные по полю заработная плата (salary) в порядке: убывания; возрастания

SELECT * 
FROM staf
ORDER BY salary DESC;

SELECT * 
FROM staf
ORDER BY salary;

-- 2 Выведите 5 максимальных заработных плат (salary)

SELECT salary
FROM staf
ORDER BY salary DESC
LIMIT 5;

-- 3 Посчитайте суммарную зарплату по каждой специальности

SELECT post, SUM(salary) as "Суммарная зарплата" 
FROM staf
GROUP BY post;

-- 4 Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT
	COUNT(id) AS count_id
FROM staff
WHERE post = "Рабочий" AND age > 24 AND age <= 49;

-- 5 Найдите количество специальностей

SELECT 
	COUNT(DISTINCT post) AS count_post
FROM staff;

-- 6 Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 

SELECT
	post
FROM staff
GROUP BY post
HAVING AVG(age) < 30;
