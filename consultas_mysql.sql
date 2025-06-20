 README.md


SELECT * FROM analisis_de_ventas.sucursales;

UPDATE sucursales
SET ubicacion = 'Texcoco, Edo. de México'
WHERE idsucursales = 1;


dashboard_powerbi.pbix

SELECT * FROM analisis_de_ventas.productos_enlatados;

SET SQL_SAFE_UPDATES = 0;

UPDATE productos_enlatados
SET Nombre = 'Atun en lata'
WHERE Nombre = 'AtÃºn en lata';

UPDATE productos_enlatados
SET Nombre = 'Atun natural'
WHERE Nombre = 'AtÃºn natural';

UPDATE productos_enlatados
SET Nombre = 'Atun en salsa'
WHERE Nombre = 'AtÃºn en salsa';

UPDATE productos_enlatados
SET marca = 'La costena'
WHERE marca = 'La CosteÃ±a';

update productos_enlatados
set marca = 'Campbells'
where marca = 'Campbellâ€™s';

update productos_enlatados
set tipo = 'Atun'
where tipo ='AtÃºn';



consultas_mysql.sql


select p.marca,
sum(v.cantidad) AS total_vendido
from ventas v
join productos_enlatados p
on v.id_producto = p.idproductos_enlatados
group by p.marca
order by total_vendido desc;

