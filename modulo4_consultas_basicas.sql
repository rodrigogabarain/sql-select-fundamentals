-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Rodrigo Gabarain
-- Fecha: 6 de Octubre de 2026
-- ══════════════════════════════════════════

-- ==========================================
-- 0. CONFIGURACIÓN E INSERCIÓN DE DATOS
-- ==========================================

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    order_id       INT,
    order_date     DATE,
    customer_id    INT,
    product_id     INT,
    product_name   VARCHAR(100),
    category       VARCHAR(50),
    quantity       INT,
    unit_price     DECIMAL(10,2),
    total_amount   DECIMAL(10,2)
);

INSERT INTO sales VALUES 
(1001, '2024-01-05', 201, 301, 'Laptop Pro 15',      'Computación', 2, 1200.00, 2400.00),
(1002, '2024-01-08', 202, 302, 'Mouse Inalámbrico',  'Accesorios',  5,   28.00,  140.00),
(1003, '2024-01-12', 203, 303, 'Monitor 4K 27"',     'Computación', 1,  450.00,  450.00),
(1004, '2024-01-15', 201, 304, 'Teclado Mecánico',   'Accesorios',  3,   95.00,  285.00),
(1005, '2024-02-03', 204, 305, 'Auriculares BT Pro', 'Audio',       2,  120.00,  240.00),
(1006, '2024-02-10', 202, 301, 'Laptop Pro 15',      'Computación', 1, 1200.00, 1200.00),
(1007, '2024-02-18', 205, 306, 'SSD Externo 1TB',    'Almacenamiento', 3, 130.00, 390.00),
(1008, '2024-03-05', 203, 302, 'Mouse Inalámbrico',  'Accesorios',  8,   28.00,  224.00),
(1009, '2024-03-12', 204, 303, 'Monitor 4K 27"',     'Computación', 2,  450.00,  900.00),
(1010, '2024-03-20', 205, 304, 'Teclado Mecánico',   'Accesorios',  4,   95.00,  380.00);


-- ==========================================
-- 1. RESOLUCIÓN DE CONSULTAS DEL EJERCICIO
-- ==========================================

-- Consulta 1: Exploración general de la tabla sales
-- Explicación: SELECT * es conveniente en etapas iniciales de desarrollo o exploración local para conocer la estructura general de la tabla. 
-- No se debe usar en entornos de producción por motivos de rendimiento, consumo innecesario de ancho de banda y fragilidad del código ante cambios de esquema.
SELECT * 
FROM sales;


-- Consulta 2: Selección de columnas específicas para finanzas
-- Explicación: Selecciona estrictamente los identificadores requeridos por finanzas (cliente, producto y monto total),
-- evitando transferir datos irrelevantes para este reporte.
SELECT 
    customer_id,
    product_id,
    total_amount
FROM sales;


-- Consulta 3: Selección con alias en español para stakeholders
-- Explicación: Renombra las columnas con alias claros en español en formato snake_case (sin espacios ni caracteres especiales)
-- para que el usuario o stakeholder no técnico entienda los datos de inmediato sin consultar el modelo de datos.
SELECT 
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;
