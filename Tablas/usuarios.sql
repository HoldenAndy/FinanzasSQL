CREATE TABLE IF NOT EXISTS usuarios (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL,
    activado BOOLEAN DEFAULT FALSE,
    codigo_verificacion VARCHAR(255),
    codigo_verificacion_expiracion DATETIME DEFAULT NULL,
    token_recuperacion_password VARCHAR(255) DEFAULT NULL,
    token_expiracion_password DATETIME DEFAULT NULL
);