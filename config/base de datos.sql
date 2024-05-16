-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para manzanas_del_cuidado_db
CREATE DATABASE IF NOT EXISTS `manzanas_del_cuidado_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `manzanas_del_cuidado_db`;

-- Volcando estructura para tabla manzanas_del_cuidado_db.categorias_servicios
CREATE TABLE IF NOT EXISTS `categorias_servicios` (
  `id_categoria_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria_servicio` varchar(50) DEFAULT NULL,
  `informacion_categoria_servicio` text,
  PRIMARY KEY (`id_categoria_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.categorias_servicios: ~0 rows (aproximadamente)
INSERT INTO `categorias_servicios` (`id_categoria_servicio`, `nombre_categoria_servicio`, `informacion_categoria_servicio`) VALUES
	(1, 'Salud', 'Ejercicios, yoga y mucho mas para mantenerte en el mejor estado fisico y mental.'),
	(2, 'Educación', 'Educación de todo tipo para estar preaparada ante los retos del día a día.');

-- Volcando estructura para tabla manzanas_del_cuidado_db.establecimientos
CREATE TABLE IF NOT EXISTS `establecimientos` (
  `id_establecimiento` int NOT NULL AUTO_INCREMENT,
  `codigo_establecimiento` varchar(50) DEFAULT NULL,
  `nombre_establecimiento` varchar(50) DEFAULT NULL,
  `responsable_establecimiento` varchar(50) DEFAULT NULL,
  `direccion_establecimiento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_establecimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.establecimientos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla manzanas_del_cuidado_db.manzanas
CREATE TABLE IF NOT EXISTS `manzanas` (
  `id_manzana` int NOT NULL AUTO_INCREMENT,
  `codigo_manzana` varchar(50) DEFAULT NULL,
  `nombre_manzana` varchar(50) DEFAULT NULL,
  `direccion_manzana` varchar(50) DEFAULT NULL,
  `informacion_manzana` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_manzana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.manzanas: ~0 rows (aproximadamente)

-- Volcando estructura para tabla manzanas_del_cuidado_db.manzanas_municipios
CREATE TABLE IF NOT EXISTS `manzanas_municipios` (
  `id_manzana` int DEFAULT NULL,
  `id_municipio` int DEFAULT NULL,
  KEY `id_manzana` (`id_manzana`),
  KEY `id_municipio` (`id_municipio`),
  CONSTRAINT `manzanas_municipios_ibfk_1` FOREIGN KEY (`id_manzana`) REFERENCES `manzanas` (`id_manzana`),
  CONSTRAINT `manzanas_municipios_ibfk_2` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.manzanas_municipios: ~0 rows (aproximadamente)

-- Volcando estructura para tabla manzanas_del_cuidado_db.mujeres
CREATE TABLE IF NOT EXISTS `mujeres` (
  `id_mujer` int NOT NULL AUTO_INCREMENT,
  `id_tipo_documento` int DEFAULT NULL,
  `id_municipio` int DEFAULT NULL,
  `nombre` text,
  `apellido` text,
  `telefono` text,
  `correo` text,
  `direccion` text,
  `ocupacion` text,
  PRIMARY KEY (`id_mujer`),
  KEY `id_tipo_documento` (`id_tipo_documento`),
  KEY `id_municipio` (`id_municipio`),
  CONSTRAINT `mujeres_ibfk_1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipos_documentos` (`id_tipo_documento`),
  CONSTRAINT `mujeres_ibfk_2` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.mujeres: ~0 rows (aproximadamente)

-- Volcando estructura para tabla manzanas_del_cuidado_db.mujeres_servicios
CREATE TABLE IF NOT EXISTS `mujeres_servicios` (
  `id_mujer` int DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  KEY `id_mujer` (`id_mujer`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `mujeres_servicios_ibfk_1` FOREIGN KEY (`id_mujer`) REFERENCES `mujeres` (`id_mujer`),
  CONSTRAINT `mujeres_servicios_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.mujeres_servicios: ~0 rows (aproximadamente)

-- Volcando estructura para tabla manzanas_del_cuidado_db.mujeres_solicitar_servicios
CREATE TABLE IF NOT EXISTS `mujeres_solicitar_servicios` (
  `id_mujer` int DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  `fecha_hora_servicio` datetime DEFAULT NULL,
  KEY `id_mujer` (`id_mujer`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `mujeres_solicitar_servicios_ibfk_1` FOREIGN KEY (`id_mujer`) REFERENCES `mujeres` (`id_mujer`),
  CONSTRAINT `mujeres_solicitar_servicios_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.mujeres_solicitar_servicios: ~0 rows (aproximadamente)

-- Volcando estructura para tabla manzanas_del_cuidado_db.municipios
CREATE TABLE IF NOT EXISTS `municipios` (
  `id_municipio` int NOT NULL AUTO_INCREMENT,
  `nombre_municipio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.municipios: ~0 rows (aproximadamente)

-- Volcando estructura para tabla manzanas_del_cuidado_db.servicios
CREATE TABLE IF NOT EXISTS `servicios` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `codigo_servicio` text,
  `nombre_servicio` text,
  `descripcion_servicio` text,
  `id_categoria_servicio` int DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `id_categoria_servicio` (`id_categoria_servicio`),
  CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`id_categoria_servicio`) REFERENCES `categorias_servicios` (`id_categoria_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.servicios: ~0 rows (aproximadamente)
INSERT INTO `servicios` (`id_servicio`, `codigo_servicio`, `nombre_servicio`, `descripcion_servicio`, `id_categoria_servicio`) VALUES
	(1, 'ds323dsds', 'Yoga', 'El yoga es una práctica que conecta el cuerpo, la respiración y la mente. ', 1),
	(2, 'g54df43fd', 'Cardio', 'El ejercicio aeróbico emplea los músculos grandes y puede realizarse durante largo tiempo. Por ejemplo, las caminatas, el trote, la natación y el ciclismo son actividades aeróbicas.', 1),
	(3, 'fg5y4deeg', 'Matematicas', 'Las matemáticas hacen la vida más fácil y ordenada para evitar el caos y las confusiones. Ciertas cosas, cualidades y habilidades promovidas por las matemáticas son la resolución de problemas, la creatividad, el pensamiento crítico y la capacidad de razonar y comunicarse de manera efectiva.', 2),
	(4, 'ldfdfm54d2', 'Primeros Auxilios', 'Con esta clase podrás ser de ayuda cuando alguien cercano a ti sufra de algún accidente y puedas socorrerlo', 2);

-- Volcando estructura para tabla manzanas_del_cuidado_db.servicios_establecimientos
CREATE TABLE IF NOT EXISTS `servicios_establecimientos` (
  `id_servicio` int DEFAULT NULL,
  `id_establecimiento` int DEFAULT NULL,
  KEY `id_servicio` (`id_servicio`),
  KEY `id_establecimiento` (`id_establecimiento`),
  CONSTRAINT `servicios_establecimientos_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`),
  CONSTRAINT `servicios_establecimientos_ibfk_2` FOREIGN KEY (`id_establecimiento`) REFERENCES `establecimientos` (`id_establecimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.servicios_establecimientos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla manzanas_del_cuidado_db.tipos_documentos
CREATE TABLE IF NOT EXISTS `tipos_documentos` (
  `id_tipo_documento` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo_documento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla manzanas_del_cuidado_db.tipos_documentos: ~0 rows (aproximadamente)
INSERT INTO `tipos_documentos` (`id_tipo_documento`, `nombre_tipo_documento`) VALUES
	(1, 'Cedula de Ciudadanía'),
	(2, 'Pasaporte'),
	(3, 'Registro Civil');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
