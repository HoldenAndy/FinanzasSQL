DROP FUNCTION IF EXISTS fun_calcular_saldo;

CREATE FUNCTION fun_calcular_saldo(p_usuario_id BIGINT) 
RETURNS DECIMAL(19,2)
DETERMINISTIC
READS SQL DATA
RETURN (
    SELECT 
        COALESCE(SUM(CASE WHEN tipo = 'INGRESO' THEN monto_base ELSE 0 END), 0) -
        COALESCE(SUM(CASE WHEN tipo = 'EGRESO' THEN monto_base ELSE 0 END), 0)
    FROM movimientos 
    WHERE usuario_id = p_usuario_id
);