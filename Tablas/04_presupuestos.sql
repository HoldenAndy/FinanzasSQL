CREATE TABLE IF NOT EXISTS presupuestos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    usuario_id BIGINT NOT NULL,
    categoria_id BIGINT NOT NULL,
    monto_limite DECIMAL(19, 2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    moneda VARCHAR(10) DEFAULT 'USD', 
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);