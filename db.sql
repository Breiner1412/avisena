CREATE TABLE `modulos` (
	`id_modulo` SMALLINT NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre_modulo` VARCHAR(30) NOT NULL,
	PRIMARY KEY(`id_modulo`)
);

DROP TABLE `permisos`;
CREATE TABLE `permisos` (
	`id_modulo` SMALLINT NOT NULL,
	`id_rol` SMALLINT NOT NULL,
	`insertar` BOOLEAN NOT NULL,
	`actualizar` BOOLEAN NOT NULL,
	`seleccionar` BOOLEAN NOT NULL,
	`borrar` BOOLEAN NOT NULL,
	PRIMARY KEY(`id_modulo`, `id_rol`),
    FOREIGN KEY(id_rol) REFERENCES roles(id_rol),
    FOREIGN KEY(id_modulo) REFERENCES modulos(id_modulo)
);
