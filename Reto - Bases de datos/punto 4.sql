-- INSTRUCCIONES INSERT

INSERT INTO zapato(id_zapato, nombre_zapato, pisada, ritmo_km, distancia, sexo, precio, link_imagen, descripcion)
VALUES (1, 'Adidas Adizero Boston 8', 'Neutro, pronador', '4:20', 'Distancias cortas, 10km, media maratón y maratón', 'H', 400000, 'Imágenes/Hombres/adidas_boston_8.jpg', 'Adidas no deja de impresionar con su serie Boston, zapato que hace honor, justamente, a la mítica Maratón de Boston. En esta ocasión tenemos la versión 8 del modelo, el cual es muy preferido por los atletas élite tanto para sus entrenamientos como para sus competiciones. Es un zapato muy versátil ya que se puede usar para hacer marcas bajísimas desde 5K hasta tener un desempeño sensacional en maratón. Con su tradicional tecnología de amortiguación Boost en la parte trasera, suela de la marca fabricadora de llantas Continental, y su sistema de torsión en la media suela, se puede obtener un gran desempeño tanto en días de repeticiones como en días de fondos largos.');

INSERT INTO zapato(id_zapato, nombre_zapato, pisada, ritmo_km, distancia, sexo, precio, link_imagen, descripcion)
VALUES(3, 'Adidas Adizero Adios Pro', 'Neutro', '3:45', '10km, media maratón y maratón', 'M', 840000, 'Imágenes/Mujeres/Adidas_Adizero_Adios_Pro.jpg', 'Dada su batalla eterna con Nike, Adidas no se queda atrás y saca este atípico modelo que rompe con el estilo convencional de la marca con el fin de hacerle frente a las míticas Nike Alphafly. Su espuma LightstrikePRO junto con las 5 varillas de carbono ubicadas a lo largo de la estructura ósea del pie permiten que haya un retorno de energía excepcional, generando un impulso que ayuda a mantener los ritmos rápidos de los corredores. Los 3 primeros puestos de las ramas masculinas y femeninas del último mundial de media maratón realizado en Gdynia usaron estas zapatillas, lo cual deja muy bien parada a Adidas frente a la competición élite mundial. Claramente su potencial podrá verse reflejado en ritmos rápidos, por debajo de 3:50 min/km, y son aptas tanto para competencia como para entrenamientos.');

INSERT INTO zapato(id_zapato, nombre_zapato, pisada, ritmo_km, distancia, sexo, precio, link_imagen, descripcion)
VALUES(14, 'Saucony Endorphin Speed', 'Neutro, supinador', '4:00', '5km, 10km y media maratón' ,'M', 775000, 'Imágenes/Mujeres/saucony.jpg', 'La marca Saucony ofrece unos zapatos que presentan una mediasuela del nuevo compuesto PWRRUN PB con la combinación de una placa (aparentemente de carbono, pero es nylon) para ofrecer, según ellos, el equilibrio perfecto entre amortiguación blanda y reactividad. Por último, la tecnología Speedroll también se presenta como una de las grandes protagonistas a la hora de invitar a la zapatilla a coger velocidad en carrera. Tanto por este último aspecto como por toda la tecnología usada, el retorno de energía resulta excepcional para aquellos corredores que van por debajo de los 4:00 min/km. Una zapatilla apta tanto para competencias como para entrenamientos.' );

INSERT INTO cliente(documento_id, nombre_completo, email, numero_tarjeta, fecha_venc_tarjeta, cvv)
VALUES(15438769, 'Andrés Zapata Carvajal', 'andreszapata@correo.com', 5497566225163740, DATE '2023-03-03', 440);

INSERT INTO cliente(documento_id, nombre_completo, email, numero_tarjeta, fecha_venc_tarjeta, cvv)
VALUES(43429780, 'Salomé Hincapié Mosquera', 'mosquerash@correo.com', 5123926538068660, DATE '2023-02-01', 440);

INSERT INTO cliente(documento_id, nombre_completo, email, numero_tarjeta, fecha_venc_tarjeta, cvv)
VALUES(1037987091, 'Hector Musk', 'spacemusk@correo.com', 5133859859427350, DATE '2022-10-01', 160);

INSERT INTO carrito_compras(detalle_compra, id_cliente, id_zapato)
VALUES('detalle_compra1', 15438769, 3);

INSERT INTO carrito_compras(detalle_compra, id_cliente, id_zapato)
VALUES('detalle_compra2', 1037987091, 1);

INSERT INTO factura(fecha_compra, detalle_compra)
VALUES(DATE('2020-11-10'), 1);



-- INSTRUCCIONES UPDATE

UPDATE carrito_compras
SET detalle_compra = '{
  "name": "Salomé Hincapié Mosquera",
  "email": "mosquerash@correo.com",
  "purchase": [
    {
      "shoe": "Adidas Adizero Adios Pro",
      "quantity": 1,
      "price": 840000,
      "subtotal": 840000
    }
  ],
  "total": 840000
}'
WHERE id_compra = 1;

UPDATE cliente
SET email = 'andreszapata@otrocorreo.com'
WHERE documento_id = 15438769;

UPDATE zapato
SET link_imagen = 'Imágenes/Hombres/adidas_boston_8_de_otro_color_mas_vivo_jeje.jpg'
WHERE id_zapato = 1;

UPDATE carrito_compras
SET id_compra = 2
WHERE id_compra = 1;

UPDATE zapato
SET precio = 450000
WHERE id_zapato = 1;

-- INSTRUCCIONES DELETE

DELETE FROM zapato
WHERE id_zapato = 14;

DELETE FROM zapato
WHERE id_zapato = 1;

DELETE FROM carrito_compras
WHERE id_cliente = 1037987091;

DELETE FROM cliente
WHERE documento_id = 1037987091;

DELETE FROM factura
WHERE id_factura = 1;

--INSTRUCCIONES TRUNCATE

SET FOREIGN_KEY_CHECKS=0;

TRUNCATE factura

TRUNCATE carrito_compras;

TRUNCATE cliente;

TRUNCATE zapato;

SET FOREIGN_KEY_CHECKS=1;
