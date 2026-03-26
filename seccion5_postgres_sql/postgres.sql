CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario NUMERIC(10, 2) NOT NULL
);

INSERT INTO empleados (nombre, salario) VALUES 
('Ana Martínez', 12500.00),
('Carlos Ruiz', 8500.50),
('Laura Gómez', 15000.00),
('Pedro Sánchez', 9200.00),
('Sofía López', 11000.75),
('Jorge Díaz', 7800.00),
('Marta Fernández', 13500.50),
('Luis Torres', 6500.00),
('Elena Vargas', 10500.00),
('Roberto Mendez', 9900.00);

-- query
-- SELECT id, nombre, salario FROM empleados WHERE salario > 10000;