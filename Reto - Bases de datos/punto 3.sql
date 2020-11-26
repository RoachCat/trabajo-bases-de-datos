CREATE TABLE `bye0pb4fmf8j7cabpthn`.`cliente` (
  `documento_id` BIGINT(50) NOT NULL,
  `nombre_completo` VARCHAR(100) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `numero_tarjeta` BIGINT(30) NOT NULL,
  `fecha_venc_tarjeta` DATE NOT NULL,
  `cvv` INT NOT NULL,
  PRIMARY KEY (`documento_id`),
  UNIQUE INDEX `documento_id_UNIQUE` (`documento_id` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC)
  );
  
  CREATE TABLE `bye0pb4fmf8j7cabpthn`.`zapato` (
  `id_zapato` BIGINT(50) NOT NULL,
  `nombre_zapato` VARCHAR(45) NOT NULL,
  `pisada` VARCHAR(20) NULL,
  `ritmo_km` VARCHAR(10) NULL,
  `distancia` VARCHAR(50) NULL,
  `sexo` CHAR(2) NOT NULL,
  `precio` INT NOT NULL,
  `link_imagen` TEXT NOT NULL,
  `descripcion` TEXT NOT NULL,
  PRIMARY KEY (`id_zapato`),
  UNIQUE INDEX `id_zapato_UNIQUE` (`id_zapato` ASC)
  );


 CREATE TABLE `bye0pb4fmf8j7cabpthn`.`carrito_compras` (
  `id_compra` INT NOT NULL AUTO_INCREMENT,
  `detalle_compra` VARCHAR(250) NOT NULL,
  `id_cliente` BIGINT(50) NOT NULL,
  `id_zapato` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id_compra`),
  UNIQUE INDEX `id_compra_UNIQUE` (`id_compra` ASC) VISIBLE);

ALTER TABLE `bye0pb4fmf8j7cabpthn`.`carrito_compras` 
ADD CONSTRAINT `carrito_cliente`
  FOREIGN KEY (`id_cliente`)
  REFERENCES `bye0pb4fmf8j7cabpthn`.`cliente` (`documento_id`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;

ALTER TABLE `bye0pb4fmf8j7cabpthn`.`carrito_compras` 
ADD CONSTRAINT `carrito_zapato`
  FOREIGN KEY (`id_zapato`)
  REFERENCES `bye0pb4fmf8j7cabpthn`.`zapato` (`id_zapato`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;


CREATE TABLE `bye0pb4fmf8j7cabpthn`.`factura` (
  `id_factura` INT NOT NULL AUTO_INCREMENT,
  `fecha_compra` DATE NOT NULL,
  `detalle_compra` INT(11) NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE INDEX `id_factura_UNIQUE` (`id_factura` ASC) VISIBLE);


ALTER TABLE `bye0pb4fmf8j7cabpthn`.`factura` 
ADD CONSTRAINT `factura_detallecarrito`
  FOREIGN KEY (`id_factura`)
  REFERENCES `bye0pb4fmf8j7cabpthn`.`carrito_compras` (`id_compra`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;



