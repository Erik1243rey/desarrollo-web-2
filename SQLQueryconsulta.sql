SELECT PRODUCTOS.DESCRIPCION, PRODUCTOS.PRECIO, CATEGORIA.DESCRIPICION, 
MARCAS.DESCRIPCION FROM PRODUCTOS
INNER JOIN CATEGORIA ON PRODUCTOS.ID_CATEGORIA = CATEGORIA.ID
INNER JOIN MARCAS ON PRODUCTOS.ID_MARCA = MARCAS.ID;