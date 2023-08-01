CREATE database hola_mundo;
show databases;
use hola_mundo;
create table animals (
id int,
tipo varchar (255),
estado varchar(255), 
primary key (id)
);
-- INSERT INTO animals ( tipo, estado) VALUES  ('chanchito', 'feliz');

alter table animals MODIFY COLUMN  id int auto_increment;
show create table animals;
CREATE TABLE `animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animals ( tipo, estado) VALUES  ('chanchito', 'feliz');
INSERT INTO animals ( tipo, estado) VALUES  ('dragon', 'feliz');
INSERT INTO animals ( tipo, estado) VALUES  ('felipe', 'triste');

SELECT * FROM animals;
SELECT * FROM animals WHERE id = 1;
SELECT * FROM animals WHERE estado = 'feliz'AND tipo = 'felipe';


UPDATE animals SET estado = 'feliz' where id =3;

SELECT * FROM animals;

DELETE FROM animals where estado = 'feliz';

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

DELETE FROM animals where id = 3;

SELECT * FROM animals;

UPDATE animals set estado = 'triste' where tipo = 'dragon';
-- esto tambien arroja error 1175
