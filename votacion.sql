

create DATABASE votacion;
use votacion;


CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `candidatos` (`id`, `nombre`) VALUES
(1, 'Michelle Bachelet'),
(2, 'Sebastian Piñera'),
(3, 'Eduardo Frei'),
(4, 'Joaquin Lavin');

CREATE TABLE `comunas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `region_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `comunas` (`id`, `nombre`, `region_id`) VALUES
(1, 'Alhué', 1),
(2, 'Buin', 1),
(3, 'Calera de Tango', 1),
(4, 'Cerrillos', 1),
(5, 'Cerro Navia', 1),
(6, 'Colina', 1),
(7, 'Conchalí', 1),
(8, 'Curacaví', 1),
(9, 'El Bosque', 1),
(10, 'El Monte', 1),
(11, 'Estación Central', 1),
(12, 'Huechuraba', 1),
(13, 'Independencia', 1),
(14, 'Isla de Maipo', 1),
(15, 'Lampa', 1),
(16, 'La Cisterna', 1),
(17, 'La Florida', 1),
(18, 'La Granja', 1),
(19, 'La Pintana', 1),
(20, 'La Reina', 1),
(21, 'Las Condes', 1),
(22, 'Lo Barnechea', 1),
(23, 'Lo Espejo', 1),
(24, 'Lo Prado', 1),
(25, 'Macul', 1),
(26, 'Maipú', 1),
(27, 'María Pinto', 1),
(28, 'Melipilla', 1),
(29, 'Ñuñoa', 1),
(30, 'Padre Hurtado', 1),
(31, 'Paine', 1),
(32, 'Pedro Aguirre Cerda', 1),
(33, 'Peñaflor', 1),
(34, 'Peñalolén', 1),
(35, 'Pirque', 1),
(36, 'Providencia', 1),
(37, 'Pudahuel', 1),
(38, 'Puente Alto', 1),
(39, 'Quilicura', 1),
(40, 'Quinta Normal', 1),
(41, 'Recoleta', 1),
(42, 'Renca', 1),
(43, 'San Bernardo', 1),
(44, 'San Joaquín', 1),
(45, 'San José de Maipo', 1),
(46, 'San Miguel', 1),
(47, 'San Pedro', 1),
(48, 'San Ramón', 1),
(49, 'Santiago', 1),
(50, 'Talagante', 1),
(51, 'Til-Til', 1),
(52, 'Vitacura', 1),
(53, 'Arica', 2),
(54, 'Camarones', 2),
(55, 'General LAgos', 2),
(56, 'Parinacota', 2),
(57, 'Putre', 2),
(58, 'Alto Hospicio', 3),
(59, 'Camiña', 3),
(60, 'Colchane', 3),
(61, 'Huara', 3),
(62, 'Iquique', 3),
(63, 'Pica', 3),
(64, 'Pozo Almonte', 3),
(65, 'Antofagasta', 4),
(66, 'Calama', 4),
(67, 'María Elena', 4),
(68, 'Mejillones', 4),
(69, 'Ollagüe', 4),
(70, 'San Pedro de Atacama', 4),
(71, 'Sierra Gorda', 4),
(72, 'Taltal', 4),
(73, 'Tocopilla', 4),
(74, 'Alto del Carmen', 5),
(75, 'Caldera', 5),
(76, 'Chañaral', 5),
(77, 'Copiapó', 5),
(78, 'Diego de Almagro', 5),
(79, 'Freirina', 5),
(80, 'Huasco', 5),
(81, 'Tierra Amarilla', 5),
(82, 'Vallenar', 5),
(83, 'Andacollo', 6),
(84, 'Canela', 6),
(85, 'Combarbalá', 6),
(86, 'Coquimbo', 6),
(87, 'Illapel', 6),
(88, 'La Higuera', 6),
(89, 'La Serena', 6),
(90, 'Los Vilos', 6),
(91, 'Monte Patria', 6),
(92, 'Ovalle', 6),
(93, 'Paihuano', 6),
(94, 'Punitaqui', 6),
(95, 'Río Hurtado', 6),
(96, 'Salamanca', 6),
(97, 'Vicuña', 6),
(98, 'Algarrobo', 7),
(99, 'Cabildo', 7),
(100, 'Calle Larga', 7),
(101, 'Cartagena', 7),
(102, 'Casablanca', 7),
(103, 'Catemu', 7),
(104, 'Concón', 7),
(105, 'El Quisco', 7),
(106, 'El Tabo', 7),
(107, 'Hijuelas', 7),
(108, 'Isla de Pascua', 7),
(109, 'Juan Fernández', 7),
(110, 'La Calera', 7),
(111, 'La Cruz', 7),
(112, 'La Ligua', 7),
(113, 'Limache', 7),
(114, 'Llaillay', 7),
(115, 'Los Andes', 7),
(116, 'Nogales', 7),
(117, 'Olmué', 7),
(118, 'Panquehue', 7),
(119, 'Papudo', 7),
(120, 'Petorca', 7),
(121, 'Puchuncaví', 7),
(122, 'Putaendo', 7),
(123, 'Quillota', 7),
(124, 'Quilpué', 7),
(125, 'Quintero', 7),
(126, 'Rinconada', 7),
(127, 'Santa María', 7),
(128, 'Santo Domingo', 7),
(129, 'San Antonio', 7),
(130, 'San Esteban', 7),
(131, 'San Felipe', 7),
(132, 'Valparaíso', 7),
(133, 'Villa Alemana', 7),
(134, 'Viña del Mar', 7),
(135, 'Zapallar', 7),
(136, 'Algarrobo', 7),
(137, 'Cabildo', 7),
(138, 'Calle Larga', 7),
(139, 'Cartagena', 7),
(140, 'Casablanca', 7),
(141, 'Catemu', 7),
(142, 'Concón', 7),
(143, 'El Quisco', 7),
(144, 'El Tabo', 7),
(145, 'Hijuelas', 7),
(146, 'Isla de Pascua', 7),
(147, 'Juan Fernández', 7),
(148, 'La Calera', 7),
(149, 'La Cruz', 7),
(150, 'La Ligua', 7),
(151, 'Limache', 7),
(152, 'Llaillay', 7),
(153, 'Los Andes', 7),
(154, 'Nogales', 7),
(155, 'Olmué', 7),
(156, 'Panquehue', 7),
(157, 'Papudo', 7),
(158, 'Petorca', 7),
(159, 'Puchuncaví', 7),
(160, 'Putaendo', 7),
(161, 'Quillota', 7),
(162, 'Quilpué', 7),
(163, 'Quintero', 7),
(164, 'Rinconada', 7),
(165, 'Santa María', 7),
(166, 'Santo Domingo', 7),
(167, 'San Antonio', 7),
(168, 'San Esteban', 7),
(169, 'San Felipe', 7),
(170, 'Valparaíso', 7),
(171, 'Villa Alemana', 7),
(172, 'Viña del Mar', 7),
(173, 'Zapallar', 7),
(174, 'Chépica', 8),
(175, 'Chimbarongo', 8),
(176, 'Codegua', 8),
(177, 'Coinco', 8),
(178, 'Coltauco', 8),
(179, 'Doñihue', 8),
(180, 'Graneros', 8),
(181, 'La Estrella', 8),
(182, 'Las Cabras', 8),
(183, 'Litueche', 8),
(184, 'Lolol', 8),
(185, 'Machalí', 8),
(186, 'Malloa', 8),
(187, 'Marchihue', 8),
(188, 'Mostazal', 8),
(189, 'Nancagua', 8),
(190, 'Navidad', 8),
(191, 'Olivar', 8),
(192, 'Palmilla', 8),
(193, 'Paredones', 8),
(194, 'Peralillo', 8),
(195, 'Peumo', 8),
(196, 'Pichidegua', 8),
(197, 'Pichilemu', 8),
(198, 'Placilla', 8),
(199, 'Pumanque', 8),
(200, 'Quinta de Tilcoco', 8),
(201, 'Rancagua', 8),
(202, 'Rengo', 8),
(203, 'Requínoa', 8),
(204, 'San Fernando', 8),
(205, 'San Vicente', 8),
(206, 'Santa Cruz', 8),
(207, 'Cauquenes', 9),
(208, 'Chanco', 9),
(209, 'Colbún', 9),
(210, 'Constitución', 9),
(211, 'Curepto', 9),
(212, 'Curicó', 9),
(213, 'Empedrado', 9),
(214, 'Hualañé', 9),
(215, 'Licantén', 9),
(216, 'Linares', 9),
(217, 'Longaví', 9),
(218, 'Maule', 9),
(219, 'Molina', 9),
(220, 'Parral', 9),
(221, 'Pelarco', 9),
(222, 'Pelluhue', 9),
(223, 'Pencahue', 9),
(224, 'Rauco', 9),
(225, 'Retiro', 9),
(226, 'Río Claro', 9),
(227, 'Romeral', 9),
(228, 'Sagrada Familia', 9),
(229, 'San Clemente', 9),
(230, 'San Javier', 9),
(231, 'San Rafael', 9),
(232, 'Talca ', 9),
(233, 'Teno', 9),
(234, 'Vichuquén', 9),
(235, 'Villa Alegre', 9),
(236, 'Yerbas Buenas', 9),
(237, 'Chillán', 10),
(238, 'Cobquecura', 10),
(239, 'Coelemu', 10),
(240, 'Coihueco', 10),
(241, 'Bulnes', 10),
(242, 'Chillán Viejo', 10),
(243, 'El Carmen', 10),
(244, 'Ninhue', 10),
(245, 'Ñiquén', 10),
(246, 'Pemuco', 10),
(247, 'Pinto', 10),
(248, 'Portezuelo', 10),
(249, 'Quillón', 10),
(250, 'Quirihue', 10),
(251, 'Ránquil', 10),
(252, 'San Carlos', 10),
(253, 'San Fabián', 10),
(254, 'San Ignacio', 10),
(255, 'San Nicolás', 10),
(256, 'Treguaco', 10),
(257, 'Yungay', 10),
(258, 'Alto Biobío', 11),
(259, 'Antuco', 11),
(260, 'Arauco', 11),
(261, 'Cabrero', 11),
(262, 'Cañete', 11),
(263, 'Chiguayante', 11),
(264, 'Concepción', 11),
(265, 'Contulmo', 11),
(266, 'Coronel', 11),
(267, 'Curanilahue', 11),
(268, 'Florida', 11),
(269, 'Hualpén', 11),
(270, 'Hualqui', 11),
(271, 'Laja', 11),
(272, 'Lebu', 11),
(273, 'Los Alamos', 11),
(274, 'Los Angeles', 11),
(275, 'Lota', 11),
(276, 'Mulchén', 11),
(277, 'Nacimiento', 11),
(278, 'Negrete', 11),
(279, 'Penco', 11),
(280, 'Quilaco', 11),
(281, 'Quilleco', 11),
(282, 'San Pedro de la Paz', 11),
(283, 'San Rosendo', 11),
(284, 'Santa Bárbara', 11),
(285, 'Santa Juana', 11),
(286, 'Talcahuano', 11),
(287, 'Tirúa', 11),
(288, 'Tomé', 11),
(289, 'Tucapel', 11),
(290, 'Yumbel', 11),
(291, 'Angol', 12),
(292, 'Carahue', 12),
(293, 'Cholchol', 12),
(294, 'Collipulli', 12),
(295, 'Cunco', 12),
(296, 'Curacautín', 12),
(297, 'Curarrehue', 12),
(298, 'Ercilla', 12),
(299, 'Freire', 12),
(300, 'Galvarino', 12),
(301, 'Gorbea', 12),
(302, 'Lautaro', 12),
(303, 'Loncoche', 12),
(304, 'Lonquimay', 12),
(305, 'Los Sauces', 12),
(306, 'Lumaco', 12),
(307, 'Melipeuco', 12),
(308, 'Nueva Imperial', 12),
(309, 'Padre Las Casas', 12),
(310, 'Perquenco', 12),
(311, 'Pitrufquén', 12),
(312, 'Pucón', 12),
(313, 'Purén', 12),
(314, 'Renaico', 12),
(315, 'Saavedra', 12),
(316, 'Temuco', 12),
(317, 'Teodoro Schmidt', 12),
(318, 'Toltén', 12),
(319, 'Traiguén', 12),
(320, 'Victoria', 12),
(321, 'Vilcún', 12),
(322, 'Villarica', 12),
(323, 'Corral', 13),
(324, 'Futrono', 13),
(325, 'Lanco', 13),
(326, 'La Unión', 13),
(327, 'Lago Ranco', 13),
(328, 'Los Lagos', 13),
(329, 'Máfil', 13),
(330, 'Mariquina', 13),
(331, 'Paillaco', 13),
(332, 'Panguipulli', 13),
(333, 'Río Bueno', 13),
(334, 'Valdivia', 13),
(335, 'Ancud', 14),
(336, 'Calbuco', 14),
(337, 'Castro', 14),
(338, 'Chaitén', 14),
(339, 'Chonchi', 14),
(340, 'Cochamó', 14),
(341, 'Curaco de Vélez', 14),
(342, 'Dalcahue', 14),
(343, 'Fresia', 14),
(344, 'Frutillar', 14),
(345, 'Futaleufú', 14),
(346, 'Hualaihué', 14),
(347, 'Llanquihue', 14),
(348, 'Los Muermos', 14),
(349, 'Maullín', 14),
(350, 'Osorno', 14),
(351, 'Palena', 14),
(352, 'Puerto Montt', 14),
(353, 'Puerto Octay', 14),
(354, 'Puerto Varas', 14),
(355, 'Puqueldón', 14),
(356, 'Purranque', 14),
(357, 'Puyehue', 14),
(358, 'Queilén', 14),
(359, 'Quellón', 14),
(360, 'Quemchi', 14),
(361, 'Quinchao', 14),
(362, 'Río Negro', 14),
(363, 'San Juan de la Costa', 14),
(364, 'San Pablo', 14),
(365, 'Aysén', 15),
(366, 'Chile Chico', 15),
(367, 'Cisnes', 15),
(368, 'Cochrane', 15),
(369, 'Coyhaique', 15),
(370, 'Guaitecas', 15),
(371, 'Lago Verde', 15),
(372, 'O\'Higgins', 15),
(373, 'Río Ibáñez', 15),
(374, 'Tortel', 15),
(375, 'Laguna Blanca', 16),
(376, 'Natales', 16),
(377, 'Porvenir', 16),
(378, 'Primavera', 16),
(379, 'Punta Arenas', 16),
(380, 'Río Verde', 16),
(381, 'San Gregorio', 16),
(382, 'Timaukel', 16),
(383, 'Torres del Paine', 16);

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `regiones` (`id`, `nombre`) VALUES
(1, 'Región Metropolitana de Santiago'),
(2, 'Región de Arica y Parinacota'),
(3, 'Región de Tarapacá'),
(4, 'Región de Antofagasta'),
(5, 'Región de Atacama'),
(6, 'Región de Coquimbo'),
(7, 'Región de Valparaíso'),
(8, 'Región del Libertador General Bernardo O\'Higgins'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Rios'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén del G. Carlos Ibañez del Campo'),
(16, 'Región de Magallanes');

CREATE TABLE `votos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `comuna_id` int(11) DEFAULT NULL,
  `candidato_id` int(11) DEFAULT NULL,
  `como_se_entero` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`);

ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `votos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `comuna_id` (`comuna_id`),
  ADD KEY `candidato_id` (`candidato_id`);


ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `comunas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `votos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `comunas`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`);

ALTER TABLE `votos`
  ADD CONSTRAINT `votos_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`),
  ADD CONSTRAINT `votos_ibfk_2` FOREIGN KEY (`comuna_id`) REFERENCES `comunas` (`id`),
  ADD CONSTRAINT `votos_ibfk_3` FOREIGN KEY (`candidato_id`) REFERENCES `candidatos` (`id`);

