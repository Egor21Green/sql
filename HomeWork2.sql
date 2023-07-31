-- 1 Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
CREATE TABLE sales (
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE,
count_product INT NOT NULL );

SELECT * FROM sales;

INSERT sales (order_date, count_product)
VALUE ("2022-01-01", "156"),  ("2022-01-02", "180"),
 ("2022-01-03", "21"),  ("2022-01-04", "124"),  ("2022-01-05", "341");
 
 -- 2 Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
 SELECT id "Номер заказа",
 CASE
	WHEN count_product < 100 THEN "Маленький заказ"
    WHEN count_product BETWEEN 100 AND 300 THEN "Средний заказ"
    ELSE "Большой заказ"
    END  "Тип заказа"
 FROM sales;
 
 -- 3 Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
 CREATE TABLE orders (
 id INT PRIMARY KEY AUTO_INCREMENT,
 employee_id VARCHAR(20) NOT NULL,
 amount TIME,
 order_status VARCHAR(20) NOT NULL);
 
 INSERT orders ( employee_id, amount, order_status)
 VALUE ('e03', '15.00', 'OPEN'),
 ('e01', '25.50', 'OPEN'),
 ('e05', '100.70', 'CLOSED'),
 ('e02', '22.18', 'OPEN'),
 ('e04', '9.50', 'CANCELLED');
 
 SELECT * FROM orders;
 
 SELECT id, employee_id,
 amount, order_status,
 IF ( order_status = "OPEN", "Order is in open state",
	IF (order_status = "CLOSED", "Order is closed", "Order is cancelled")) "full_order_status"
 FROM orders;
