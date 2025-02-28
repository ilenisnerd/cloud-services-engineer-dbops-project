-- migrations/V002__change_schema.sql
-- Работа с таблицей product - добавление столбца price
ALTER TABLE product
ADD COLUMN price DOUBLE PRECISION;

-- Удаление таблицы product_info за ненадобностью
DROP TABLE IF EXISTS product_info;

-- Работа с таблицей orders - добавление столбца date_created
ALTER TABLE orders
ADD COLUMN date_created DATE DEFAULT CURRENT_DATE;

-- Удаление таблицы orders_date за ненадобностью
DROP TABLE IF EXISTS orders_date;

-- Удаление индексов удаленный таблиц
DROP INDEX IF EXISTS idx_product_info_product_id;
DROP INDEX IF EXISTS idx_orders_date_order_id;

