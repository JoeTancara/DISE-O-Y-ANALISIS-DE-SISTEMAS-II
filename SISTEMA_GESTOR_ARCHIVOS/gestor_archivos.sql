CREATE DATABASE gestor_archivos;
USE gestor_archivos;
SET NAMES utf8mb4;

-- ----------------------------
-- Table structure for t_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `t_usuarios`;
CREATE TABLE `t_usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaNacimiento` date NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `insert` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id_usuario`) USING BTREE,
  INDEX `id_usuario`(`id_usuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_usuarios
-- ----------------------------
INSERT INTO `t_usuarios` VALUES (1, 'ADMIN', '2024-07-19', 'admin@gmail.com', 'ADMINISTRADOR', '69c5fcebaa65b560eaf06c3fbeb481ae44b8d618', '2024-07-22 23:31:19');



-- ----------------------------
-- Table structure for t_categorias
-- ----------------------------
DROP TABLE IF EXISTS `t_categorias`;
CREATE TABLE `t_categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fechaInsert` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id_categoria`) USING BTREE,
  INDEX `fkCategoriaUsuario_new_idx`(`id_usuario`) USING BTREE,
  INDEX `fkCategoriaUsuario_idx`(`id_usuario`) USING BTREE,
  CONSTRAINT `fkCategoriaUsuarios` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_categorias
-- ----------------------------


-- ----------------------------
-- Table structure for t_archivos
-- ----------------------------
DROP TABLE IF EXISTS `t_archivos`;
CREATE TABLE `t_archivos` (
  `id_archivo` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_categoria` int NULL DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ruta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `fecha` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id_archivo`) USING BTREE,
  INDEX `fkArchivosCategorias_idx`(`id_categoria`) USING BTREE,
  INDEX `fkUsuariosArchivos_idx`(`id_usuario`) USING BTREE,
  CONSTRAINT `fkArchivosCategorias` FOREIGN KEY (`id_categoria`) REFERENCES `t_categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkUsuariosArchivos` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


