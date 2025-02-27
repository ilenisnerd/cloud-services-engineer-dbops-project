# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

Для создания базы данных и настройки прав доступа выполните следующие SQL-запросы:

```sql
-- Создание базы данных
CREATE DATABASE store;

-- Подключение к базе
\c store

-- Создание пользователя
CREATE USER new_user WITH PASSWORD 'secure_password_here';

-- Выдача прав на базу
GRANT ALL PRIVILEGES ON DATABASE store TO new_user;

-- Выдача прав на таблицы
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO new_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public 
    GRANT ALL PRIVILEGES ON TABLES TO new_user;

-- Права на sequences
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO new_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public 
    GRANT ALL PRIVILEGES ON SEQUENCES TO new_user;
