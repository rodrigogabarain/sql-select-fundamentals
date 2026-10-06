-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Rodrigo Gabarain
-- Fecha: 6 de Octubre de 2026
-- ══════════════════════════════════════════

-- Consulta 1: Exploración general de la tabla sales
-- Comentario: Es útil usar SELECT * únicamente en la fase inicial de exploración local para conocer
-- la estructura y datos de una tabla. NO se recomienda usarlo en entornos de producción ni en sistemas 
-- automatizados por razones de rendimiento, transferencias innecesarias de datos y mantenibilidad del código.
SELECT * 
FROM sales;

-- Consulta 2: Selección de columnas específicas para finanzas
-- Extrae únicamente los datos requeridos por el equipo financiero (cliente, producto y monto total).
SELECT 
    customer_id, 
    product_id, 
    total_amount
FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders
-- Renombra las columnas técnicas en inglés a términos claros y amigables en español usando el estándar snake_case.
SELECT 
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;