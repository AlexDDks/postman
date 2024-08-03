-- Crear una Tabla:
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar Datos:
INSERT INTO users (name, email) VALUES ('John Doe', 'john.doe@example.com');

-- Leer Datos:
SELECT * FROM users;

-- Actualizar Datos:
UPDATE users SET name = 'Jane Doe' WHERE id = 1;

-- Eliminar Datos:
DELETE FROM users WHERE id = 1;


-- Relaciones:
-- One-to-One:
CREATE TABLE profiles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    bio TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


-- One-to-Many:
CREATE TABLE posts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    title VARCHAR(100),
    content TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


-- Many-to-Many:
CREATE TABLE user_roles (
    user_id INT,
    role_id INT,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);


