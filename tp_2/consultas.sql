USE facturacion_1;

-- 1. Mostrar todos los clientes registrados en la base de datos. 
SELECT * FROM E01_CLIENTE;

-- 2. Listar solo el nombre y apellido de todos los clientes.
SELECT nombre, apellido FROM E01_CLIENTE;

-- 3. Mostrar todos los productos con sus precios y stock.
SELECT nombre, precio, stock FROM E01_PRODUCTO;

-- 4. Mostrar el nombre, apellido y dirección de los clientes que tengan un valor de activo mayor a 100.
SELECT nombre, apellido, direccion FROM E01_CLIENTE WHERE activo > 100;

-- 5. Listar todos los productos cuyo precio sea mayor a 800. 
SELECT nombre, precio, stock FROM E01_PRODUCTO WHERE precio > 800;

-- 6. Mostrar todos los clientes cuyo apellido comience con la letra M.
SELECT nombre, apellido, direccion FROM E01_CLIENTE WHERE apellido LIKE 'M%';

-- 7. Mostrar los productos cuyo nombre contenga la palabra meat.
SELECT nombre, precio, stock FROM E01_PRODUCTO WHERE nombre LIKE '%meat%';

-- 8. Obtener las diferentes marcas de productos (sin repetir).
SELECT DISTINCT marca FROM E01_PRODUCTO;

-- 9. Mostrar todos los clientes cuyo valor de activo esté entre 50 y 100.
SELECT nombre, apellido, direccion, activo FROM E01_CLIENTE WHERE activo BETWEEN 50 AND 100;

-- 10. Listar los productos cuyo precio sea mayor a 500 y su stock mayor a 400.
SELECT nombre, precio, stock FROM E01_PRODUCTO WHERE precio > 500 AND stock > 400;

-- 11. Listar los clientes cuyo apellido sea “Rose” o “Allen”.
SELECT nombre, apellido, direccion FROM E01_CLIENTE WHERE apellido IN ('Rose', 'Allen');

-- 12. Mostrar los clientes cuyo nombre contenga la letra a en cualquier posición.
SELECT nombre, apellido, direccion FROM E01_CLIENTE WHERE nombre LIKE '%a%';

-- 13. Listar los productos cuyo precio esté entre 200 y 600.
SELECT nombre, precio, stock FROM E01_PRODUCTO WHERE precio BETWEEN 200 AND 600;

-- 14. Mostrar los productos que tengan un stock menor a 100.
SELECT nombre, precio, stock FROM E01_PRODUCTO WHERE stock < 100;

-- 15. Listar todos los clientes cuya dirección contenga la palabra Avenida.
SELECT nombre, apellido, direccion FROM E01_CLIENTE WHERE direccion LIKE '%Avenida%';

-- 16. Mostrar los productos que tengan en el campo descripcion la palabra Nulla.
SELECT nombre, precio, stock, descripcion FROM E01_PRODUCTO WHERE descripcion LIKE '%Nulla%';

-- 17. Obtener todos los productos con precio menor a 300 o stock mayor a 900.
SELECT nombre, precio, stock FROM E01_PRODUCTO WHERE precio < 300 OR stock > 900;

-- 18. Listar los clientes cuyo campo activo sea igual a 0, 50 o 100.
SELECT nombre, apellido, direccion, activo FROM E01_CLIENTE WHERE activo IN (0, 50, 100);

-- 19. Mostrar los productos cuya marca termine con la palabra Company.
SELECT nombre, precio, stock, marca FROM E01_PRODUCTO WHERE marca LIKE '%Company';

-- 20. Listar los clientes cuyo nombre empiece con “C” y su activo sea mayor a 80.
SELECT nombre, apellido, direccion, activo FROM E01_CLIENTE WHERE nombre LIKE 'C%' AND activo > 80;

-- 21. Mostrar los productos ordenados por precio de mayor a menor.
SELECT nombre, precio, stock FROM E01_PRODUCTO ORDER BY precio DESC;

-- 22. Mostrar los 10 primeros clientes ingresados en la tabla.
SELECT * FROM E01_CLIENTE LIMIT 10;

-- 23. Obtener el producto más caro y el más barato.
SELECT nombre, precio, stock FROM E01_PRODUCTO ORDER BY precio DESC LIMIT 1;
SELECT nombre, precio, stock FROM E01_PRODUCTO ORDER BY precio ASC LIMIT 1;

-- 24. Contar cuantos clientes están registrados en la base de datos.
SELECT COUNT(*) AS total_clientes FROM E01_CLIENTE;

-- 25. Contar cuantos productos tienen un precio mayor a 500.
SELECT COUNT(*) AS total_productos_mayores_500 FROM E01_PRODUCTO WHERE precio > 500;

-- 26. Calcular el promedio de los precios de todos los productos.
SELECT AVG(precio) AS promedio_precios FROM E01_PRODUCTO;

-- 27. Calcular el stock total disponible de todos los productos.
SELECT SUM(stock) AS stock_total FROM E01_PRODUCTO;

-- 28. Insertar dos clientes nuevos en la tabla E01_CLIENTE.​
INSERT INTO E01_CLIENTE (nombre, apellido, direccion, activo) VALUES 
('Martin', 'Lorenzi', 'Tres Arroyos', 200), ('Juan', 'Perez', 'Tandil', 25);

-- 29. Insertar dos productos nuevos en la tabla E01_PRODUCTO.​
INSERT INTO E01_PRODUCTO (marca, nombre, descripcion, precio, stock) VALUES  
('Samsung', 'Monitor', 'Monitor de 14 pulgadas', 50000, 1),
('Kodak', 'Celular', 'Celular de última generación', 50000, 1);

-- 30. Actualizar la dirección de un cliente (a elección).​
UPDATE E01_CLIENTE SET direccion = 'Bahía Blanca' WHERE nombre = 'Juan' AND apellido = 'Perez';

-- 31. Actualizar la dirección de un cliente (a elección).​
UPDATE E01_PRODUCTO SET stock = stock - 10 WHERE nombre = 'Monitor' AND marca = 'Samsung';

-- 32. Subir un 10% el precio de todos los productos de una marca específica.​
UPDATE E01_PRODUCTO SET precio = precio * 1.10 WHERE marca = 'Samsung';

-- 32. Eliminar un cliente (a elección).​
DELETE FROM E01_CLIENTE WHERE nombre = 'Juan' AND apellido = 'Perez';

-- 33. Eliminar un producto (a elección).
DELETE FROM E01_PRODUCTO WHERE nombre = 'Celular' AND marca = 'Kodak';
