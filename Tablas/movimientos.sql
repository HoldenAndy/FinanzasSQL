CREATE TABLE IF NOT EXISTS movimientos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    usuario_id BIGINT NOT NULL,
    categoria_id BIGINT NOT NULL,
    monto DECIMAL(19, 2) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR(255),
    tipo VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    moneda VARCHAR(3) NOT NULL,
    monto_base DECIMAL(19, 2) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);