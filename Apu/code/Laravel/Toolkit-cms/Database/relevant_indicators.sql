-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 10:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toolkit`
--

-- --------------------------------------------------------

--
-- Table structure for table `relevant_indicators`
--

CREATE TABLE `relevant_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `toolkit_category_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `chapter` text DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relevant_indicators`
--

INSERT INTO `relevant_indicators` (`name`, `description`, `toolkit_category_id`, `parent_id`, `chapter`, `language`, `order_by`, `status`, `created_by`, `updated_by`) VALUES
('Aumento del acceso a servicios  de cuidado de la primera  infancia y desarrollo para niños  y niñas en edad preescolar.', NULL, 191, NULL, NULL, 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de niños y niñas en edad preescolar inscritos en \r\nservicios ECCD (desagregados por género, discapacidad, \r\netnia, idioma, pobreza según el contexto)', NULL, 289, 'E 1.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de niños y niñas que asisten a los servicios \r\nde ECCD (desagregados por género, discapacidad, \r\netnia, pobreza según el contexto)', NULL, 289, 'E 1.2', 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de niños y niñas en primer grado de educación primaria que \r\nse benefician de los servicios de ECCD el año anterior (desagregado \r\npor género, discapacidad,etnia, idioma, pobreza según el contexto)', NULL, 289, 'E 1.3', 'fr', 3, 1, 1, 1),
('Aumento de la capacidad de  educadores, docentes y padres/ cuidadores para apoyar la transición  suave a la escuela primaria.', NULL, 191, NULL, NULL, 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de educadores, docentes y padres/cuidadores formados \r\npara apoyar la transición a la escuela primaria para todas y todos', NULL, 293, 'E 1.4', 'fr', 1, 1, 1, 1),
(NULL, 'Programas, actividades y materiales desarrollados \r\npara la transición a la escuela primaria', NULL, 293, 'E 1.5', 'fr', 2, 1, 1, 1),
('Mejoramiento de la calidad  de los servicios de ECCD  para promover resultados de  desarrollo y aprendizaje', NULL, 191, NULL, NULL, 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de educadores que utilizan juegos inclusivos \r\ny materiales de aprendizaje adaptados para apoyar las \r\nnecesidades de aprendizaje y habilidades de niños y niñas', NULL, 296, 'E 5.5 Inclusivo', 'fr', 1, 1, 1, 1),
('Aumento del acceso a educación  básica de calidad para niños  y niñas en edad escolar  primaria en el área objetivo', NULL, 191, NULL, NULL, 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de niños y niñas en edad de educación primaria \r\nmatriculados en la escuela primaria (desagregados por género, \r\ndiscapacidad, etnia, idioma, pobreza según el contexto)', NULL, 298, 'B 1.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de estudiantes de educación primaria que acuden \r\nregularmente a la escuela primaria (desagregados por género, \r\ndiscapacidad, etnia, idioma, pobreza según el contexto)', NULL, 298, 'B 1.2', 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de niños y niñas en edad de educación primaria oficial \r\nque no asisten a la escuela de educación primaria (desagregados por \r\ngénero, discapacidad, etnia, idioma, pobreza según el contexto)', NULL, 298, 'B 1.3', 'fr', 3, 1, 1, 1),
('Mejoramiento de los resultados de  alfabetización y matemáticas de  estudiantes de educación primaria', NULL, 191, NULL, NULL, 'fr', 5, 1, 1, 1),
(NULL, 'Proporción de estudiantes que avanzan al siguiente grado \r\ndesagregados por género, discapacidad, etnia, idioma, pobreza \r\nsegún el contexto (se pueden hacer más clasificaciones en relación \r\ncon el número de niños y niñas que se han beneficiado de un IEP)', NULL, 302, 'B 2.2', 'fr', 1, 1, 1, 1),
('A los estudiantes de primaria se  les enseña con metodologías  pedagógicas apropiadas', NULL, 210, NULL, NULL, 'fr', 5, 1, 1, 1),
(NULL, 'Proporción de docentes formados que utilizan material inclusivo \r\napropiado para la edad, diversificado y relevante para las necesidades \r\nde aprendizaje y habilidades de todos los niños y las niñas', NULL, 304, 'B 7.2', 'fr', 1, 1, 1, 1),
('Disminución del número de niñas  que abandonan la escuela', NULL, 210, NULL, NULL, 'fr', 7, 1, 1, 1),
(NULL, 'Proporción de niñas en edad escolar de ECCD/escuela \r\nprimaria/ secundaria inscritas en ECCD/escuelas primarias/\r\nsecundarias (seleccione la más apropiada para su programa)', NULL, 306, 'G 1.1', 'fr', 1, 1, 1, 1),
('Mejoramiento de la calidad de los servicios de ECCD para promover resultados de desarrollo y aprendizaje', NULL, 193, NULL, NULL, 'fr', 8, 1, 1, 1),
(NULL, 'Proporción de educadores que aplican metodología inclusiva/ Ready to Learn CA/métodos centrados en los niños y niñas/ métodos de disciplina positiva en los servicios de ECCD', NULL, 314, 'E 5.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de educadores formados en metodología inclusiva/bases de aprendizaje social y emocional/Ready to Learn CA/métodos centrados en los niños y las niñas/métodos de disciplina positiva para servicios de ECCD', NULL, 314, 'E 5.3', 'fr', 2, 1, 1, 1),
('Mejoramiento de los resultados en alfabetización y matemáticas de estudiantes de escuela primaria en los grados 2 y 3 del área objetivo', NULL, 193, NULL, NULL, 'fr', 9, 1, 1, 1),
(NULL, 'Proporción de estudiantes en grados 2 o 3 de primaria que consiguen al menos un nivel mínimo de dominio en habilidades de alfabetización y numéricas (Medido con la evaluación LB, evaluación NB, evaluaciones de aprendizaje nacionales, evaluación sumativa, etc.) desagregado por género, discapacidad, idioma, pobreza según el contexto (para desagregar más se puede hacer en relación sí el niño o la niña tiene un IEP o no)', NULL, 317, 'B 2.1', 'fr', 1, 1, 1, 1),
('Niños y adultos son más capaces de entender y gestionar las emociones, establecer y conseguir objetivos positivos, sentir y mostrar empatía por otros', NULL, 193, NULL, NULL, 'fr', 10, 1, 1, 1),
(NULL, 'Proporción de docentes formados que aplican disciplina \r\npositiva y principios de derechos de la niñez', NULL, 319, 'B 5.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de estudiantes en edad escolar primaria de \r\nlas escuelas objetivo que sufren bullying, castigo físico, \r\nacoso, violencia, discriminación sexual y abuso', NULL, 319, 'B 5.2', 'fr', 2, 1, 1, 1),
('Los recursos humanos, financieros y físicos de la escuela se gestionan de forma efectiva para el beneficio de niños y niñas, respetando las políticas de inclusión y protección', NULL, 193, NULL, NULL, 'fr', 11, 1, 1, 1),
(NULL, 'Proporción de escuelas de educación primaria con códigos de conducta de docentes y de la escuela desarrollados e implementados', NULL, 322, 'B.9.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de escuelas primarias que han implementado de manera efectiva un mecanismo de quejas', NULL, 322, 'B 9.2', 'fr', 2, 1, 1, 1),
(NULL, 'Aumento en la participación (en un XX%) de líderes escolares en reuniones de gestión escolar para asegurar que los recursos humanos, financieros y físicos se gestionen para tratar las barreras de acceso y aprendizaje de todos los niños y niñas', NULL, 322, 'B 9.3', 'fr', 3, 1, 1, 1),
('Mejoramiento del apoyo psicosocial  a víctimas de violencia de género', NULL, 193, NULL, NULL, 'fr', 12, 1, 1, 1),
(NULL, 'Proporción de servicios que ofrecen apoyo psicosocial para víctimas de violencia de género en ECCD/escuelas primarias/secundarias', NULL, 326, 'G. 1.2', 'fr', 1, 1, 1, 1),
('Mejoramiento de los estándares de  calidad del ambiente de aprendizaje  de los servicios de ECCD', NULL, 198, NULL, NULL, 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de centros ECCD que son seguros y accesibles para todos (de acuerdo con los estándares)', NULL, 328, 'E 4.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de centros ECCD con instalaciones adecuadas de agua, saneamiento e higiene', NULL, 328, 'E 4.2', 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de centros ECCD que apoyan la buena salud y nutrición', NULL, 328, 'E 4.3', 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de centros ECCD proporcionando a) revisiones regulares e b) intervenciones de salud (vacunas necesarias, desparasitación, exámenes físicos, medicación para enfermedades comunes) a niños y niñas', NULL, 328, 'E 4.4', 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de centros ECCD que proporcionan a) aparatos de asistencia o b) derivación a servicios especializados', NULL, 328, 'E 4.4 inclusive', 'fr', 5, 1, 1, 1),
('Mejoramiento de los estándares  de calidad del ambiente de  aprendizaje de escuelas primarias  para el desarrollo holístico  de los niños y las niñas', NULL, 198, NULL, NULL, 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de escuelas primarias que son seguras \r\ny físicamente accesibles para todos', NULL, 334, 'B 6.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de estudiantes en edad de escuela primaria \r\nque tienen acceso a escuelas primarias con instalaciones \r\nadecuadas de agua, saneamiento e higiene', NULL, 334, 'B 6.2', 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de escuelas con condiciones estructurales \r\nmejoradas que aseguran el acceso seguro e igualitario de \r\ntodos los niños y las niñas en edad de educación primaria', NULL, 334, 'B 6.3', 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de estudiantes en edad de escuela primaria que \r\ntienen acceso a escuelas primarias seguras y físicamente \r\naccesibles que apoyan la buena salud y nutrición', NULL, 334, 'B 6.4', 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de escuelas con planes inclusivos de preparación \r\npara actividades continuas de reducción y respuesta \r\na riesgos - preparación de actividades de respuesta a \r\ndaños y amenazas dentro y fuera de la escuela', NULL, 334, 'B 6.5', 'fr', 5, 1, 1, 1),
('Los recursos humanos, financieros  y físicos de la escuela se gestionan  de forma efectiva para el beneficio  de niños y niñas, respetando las  políticas de inclusión y protección', NULL, 198, NULL, NULL, 'fr', 3, 1, 1, 1),
(NULL, 'Aumento en la participación (en un XX%) de líderes escolares \r\nen reuniones de gestión escolar para asegurar que los recursos \r\nhumanos, financieros y físicos se gestionen para tratar las \r\nbarreras de acceso y aprendizaje de todos los niños y niñas', NULL, 340, 'B 9.3', 'fr', 1, 1, 1, 1),
('Disminución del número de niñas que abandonan la escuela', NULL, 198, NULL, NULL, 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de niñas en edad escolar de ECCD/escuela primaria/ secundaria inscritas en ECCD/escuelas primarias/ secundarias (seleccione la más apropiada para su programa)', NULL, 342, 'G 1.1', 'fr', 1, 1, 1, 1),
('Mejoramiento de la calidad  de las instalaciones WASH y  servicios para estudiantes', NULL, 198, NULL, NULL, 'fr', 5, 1, 1, 1),
(NULL, 'Proporción de desechos seguros para productos de higiene femenina', NULL, 344, 'G 1.3', 'fr', 1, 1, 1, 1),
('Mejoramiento de los resultados de desarrollo infantil de niños y niñas en edad preescolar que se benefician de un servicios de ECCD', NULL, 210, NULL, NULL, 'fr', 1, 1, 1, 1),
(NULL, 'Número de niños y niñas con dificultades de aprendizaje identificadas y derivados a evaluación de discapacidades', NULL, 346, 'E 2.2', 'fr', 1, 1, 1, 1),
('Mejoramiento de la calidad de los servicios de ECCD para promover resultados de desarrollo y aprendizaj', NULL, 210, NULL, NULL, 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de educadores formados en metodología inclusiva/bases de aprendizaje social y emocional/Ready to Learn CA/métodos centrados en los niños y las niñas/ métodos de disciplina positiva para servicios de ECCD', NULL, 348, 'E 5.3', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de educadores que usan material de aprendizaje y juego adecuado a la edad y sensible al género para apoyar el proceso de desarrollo y aprendizaje de niños y niñas', NULL, 348, 'E 5.5', 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de educadores que usan material de aprendizaje y juego adecuado a la edad y sensible al género para apoyar el proceso de desarrollo y aprendizaje de niños y niñas', NULL, 348, 'E 5.5 Inclusivo', 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de educadores que utilizan juegos inclusivos y materiales de aprendizaje adaptados para apoyar las necesidades de aprendizaje y habilidades de niños y niñas', NULL, 348, 'E 5.6', 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de clases ECCD que usan libros infantiles', NULL, 348, 'E 5.6 Inclusive', 'fr', 5, 1, 1, 1),
(NULL, 'Proporción de clases ECCD que usan libros infantiles inclusivos', NULL, 348, 'E 5.7', 'fr', 6, 1, 1, 1),
(NULL, 'Número de niñas y niños que tienen acceso a libros infantiles', NULL, 348, 'E 5.7 Inclusivo', 'fr', 7, 1, 1, 1),
('Mejoramiento de los resultados en  alfabetización y matemáticas de  estudiantes de escuela primaria en  los grados 2 y 3 del área objetivo', NULL, 210, NULL, NULL, 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de estudiantes en grados 2 o 3 de primaria que \r\nconsiguen al menos un nivel mínimo de dominio en habilidades \r\nde alfabetización y numéricas (Medido con la evaluación LB, \r\nevaluación NB, evaluaciones de aprendizaje nacionales, evaluación \r\nsumativa, etc.) desagregado por género, discapacidad, idioma, \r\npobreza según el contexto (para desagregar más se puede \r\nhacer en relación sí el niño o la niña tiene un IEP o no)', NULL, 356, 'B 2.1', 'fr', 1, 1, 1, 1),
('Mejoramiento del bienestar,  motivación y desarrollo  profesional de los docentes', NULL, 210, NULL, NULL, 'fr', 4, 1, 1, 1),
(NULL, 'Número y proporción de docentes que demuestran uno o más \r\nniveles de mejora frente a las competencias acordadas', NULL, 358, 'B 7.1', 'fr', 1, 1, 1, 1),
(NULL, 'Número y proporción de docentes que reportan estar \r\ncontinuamente motivados en su trabajo (desagregados \r\npor género, edad, etnia, religión, habilidad)', NULL, 358, 'B 7.3', 'fr', 2, 1, 1, 1),
(NULL, 'Número y proporción de docentes que reportan que \r\nse cubren sus necesidades de bienestar laboral', NULL, 358, 'B 7.9', 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de docentes que usan material de aprendizaje adecuado a la edad y sensible al género para apoyar el proceso de aprendizaje de niños y niñas', NULL, 304, 'B 7.4', 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de docentes formados que utilizan material inclusivo apropiado para la edad, diversificado y relevante para las necesidades de aprendizaje y habilidades de todos los niños y las niñas', NULL, 304, 'B 7.4  Inclusivo', 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de estudiantes con mayor acceso a materiales de lectura adecuados a su edad', NULL, 304, 'B 7.5', 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de estudiantes con necesidades individuales de educación con mayor acceso a material de lectura adaptado a la edad', NULL, 304, 'B 7.5  Inclusivo', 'fr', 5, 1, 1, 1),
(NULL, 'Proporción de docentes formados en prácticas pedagógicas apropiadas (metodología inclusiva/disciplina positiva/métodos centrados en los niños y las niñas/LB-CA, NB-CA)', NULL, 304, 'B 7.7', 'fr', 6, 1, 1, 1),
(NULL, 'Proporción de docentes formados en prácticas pedagógicas apropiadas (metodología inclusiva/disciplina positiva/métodos centrados en los niños y las niñas/LB-CA, NB-CA)', NULL, 304, 'B 7.8', 'fr', 7, 1, 1, 1),
(NULL, 'Número de niños y niñas con dificultades de aprendizaje identificadas y derivados a evaluación de discapacidades', NULL, 304, 'B 7.11', 'fr', 8, 1, 1, 1),
(NULL, '% de niños y niñas identificados en cada clase que tienen dificultades de aprendizaje, y son apoyados por programas extracurriculares, aparatos o IEP, etc. (contextualizarse en base a las actividades previstas)', NULL, 304, 'B 7.13', 'fr', 9, 1, 1, 1),
('Aumento del nivel de inclusión y representatividad de las personas con discapacidad en la comunidad escolar', NULL, 210, NULL, NULL, 'fr', 6, 1, 1, 1),
(NULL, 'Número de profesores con discapacidad que forman parte del personal educativo', NULL, 372, 'A 1.1', 'fr', 1, 1, 1, 1),
('Aumento en la igualdad de género en la contratación de docentes', NULL, 210, NULL, NULL, 'fr', 8, 1, 1, 1),
(NULL, 'Proporción de intervenciones que promueven la contratación, las condiciones de trabajo, la formación, el apoyo y la supervisión de los profesores con perspectiva de género', NULL, 374, 'G 1.4', 'fr', 1, 1, 1, 1),
('Aumento de conocimientos,  actitudes y prácticas del Early  Learning de padres/cuidadores de  niños y niñas en edad preescolar  y miebros de la comunidad', NULL, 221, NULL, NULL, 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de padres/cuidadores con mejores conocimientos sobre las prácticas/métodos de aprendizaje temprano para estimular el desarrollo de los niños en el hogar', NULL, 376, 'E 6.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de padres/cuidadores de niños y niñas en edad preescolar con requerimientos identificados para enfoques de enseñanza adaptados, quienes han mejorado su conocimiento en prácticas de Early Learning/métodos para apoyar a sus hijos/hijas en casa', NULL, 376, 'E 6.1 Inclusivo', 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de facilitadores ECCD formados en actividads de Ready to Learn at Home', NULL, 376, 'E 6.2', 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de facilitadores ECCD formados en métodos/ técnicas para niños y niñas con necesidades educativas individuales para estimular su aprendizaje temprano en casa', NULL, 376, 'E 6.2 Inclusivo', 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de facilitadores ECCD que realizan sesiones mensuales para padres/cuidadores de Ready to Learn at Home', NULL, 376, 'E 6.3', 'fr', 5, 1, 1, 1),
(NULL, 'Proporción de facilitadores ECCD que realizan sesiones mensuales para padres/cuidadores de niños y niñas en edad preescolar con necesidades educativas individuales sobre métodos/ técnicas para estimular su aprendizaje temprano en casa', NULL, 376, 'E 6.3 Inclusivo', 'fr', 6, 1, 1, 1),
(NULL, 'Proporción de padres/cuidadores formados en lo esencial del aprendizaje temprano /actividades de Ready to Learn at Home', NULL, 376, 'E 6.4', 'fr', 7, 1, 1, 1),
(NULL, 'Proporción de padres/cuidadores de niños y niñas en edad preescolar con necesidades educativas individuales formados en métodos/ técnicas para estimular su aprendizaje temprano en casa', NULL, 376, 'E 6.4 Inclusivo', 'fr', 8, 1, 1, 1),
('Mejoramiento del conocimiento,  actitudes y prácticas de padres/ cuidadores de niños y niñas en  edad de educación primaria  y miembros de la comunidad  frente a la educación', NULL, 221, NULL, NULL, 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de padres/cuidadores formados que participan en actividades apropiadas para estimular la lectura y el cálculo de niños y niñas en casa', NULL, 385, 'B 8.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de niños y niñas en edad de educación primaria cuyos padres dialogaron del progreso de su hijo/hija con docentes de la escuela/participaron de reuniones de gobierno escolar', NULL, 385, 'B 8.2', 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de niños y niñas de educación primaria que acuden a la escuela y reciben ayuda con los deberes escolares', NULL, 385, 'B 8.3', 'fr', 3, 1, 1, 1),
(NULL, 'Número de PTAs (asociaciones de madres y padres de estudiantes) establecidos o fortalecidos que incluyen representación de padres/ cuidadores de niños y niñas con necesidades educativas individuales/ /niñez con discapacidad', NULL, 385, 'B 8.4', 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de comunidades con bancos de libros inclusivos y lugares de alfabetización/lectura activa', NULL, 385, 'B 8.5  Inclusivo', 'fr', 5, 1, 1, 1),
('Aumento de la recolección de datos con perspectiva de género', NULL, 221, NULL, NULL, 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de metodologías y enfoques dirigidos \r\na recopilar datos de las estudiantes', NULL, 391, 'G 1.5', 'fr', 1, 1, 1, 1),
('Aumento de representación de género, discapacidad y minorias en PTAs y SMCs', NULL, 221, NULL, NULL, 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de PTAs y SMCs que promueven la inclusión', NULL, 393, 'G 1.6', 'fr', 1, 1, 1, 1),
('Políticas a nivel nacional/  local son más capaces de  promover acceso igualitario a  servicios ECCD de calidad', NULL, 229, NULL, NULL, 'fr', 1, 1, 1, 1),
(NULL, 'Número de reuniones a nivel nacional sobre Ready to Learn, y su integración en el currículo nacional por los responsables de las políticas celebradas', NULL, 395, 'E 3.2', 'fr', 1, 1, 1, 1),
(NULL, 'Número de reuniones a nivel nacional celebradas con las partes interesadas en el ECCD sobre inclusión, y su integración en el currículo nacional', NULL, 395, 'E 3.2  Inclusivo', 'fr', 2, 1, 1, 1),
(NULL, 'Número de políticas que solicitan promover la gratuidad y obligatoriedad de a) preescolar; b) Servicios de ECCD integrados en las políticas de educación para todos', NULL, 395, 'E 3.5', 'fr', 3, 1, 1, 1),
(NULL, 'Se revisa el plan de estudios nacional de ECCD, y se identifican las oportunidades para integrar las actividades de \"Ready to Learn\" CA (ELM)', NULL, 395, 'E 3.6', 'fr', 4, 1, 1, 1),
(NULL, 'Se revisa el plan de estudios nacional de ECCD, y se identifican las oportunidades para integrar perspectivas de inclusión', NULL, 395, 'E 3.6  Inclusivo', 'fr', 5, 1, 1, 1),
('Calidad mejorada de los servicios ECCD para promover resultados de desarrollo y aprendizaje', NULL, 229, NULL, NULL, 'fr', 2, 1, 1, 1),
(NULL, 'Proporción de centros ECCD que han reducido barreras de acceso y participación de niños y niñas en edad preescolar según los planes de mejora de la escuela', NULL, 401, 'E 5.8', 'fr', 1, 1, 1, 1),
('Los recursos humanos,  financieros y físicos de la escuela  se gestionan de forma efectiva  para el beneficio de niños y  niñas, respetando las políticas  de inclusión y protección', NULL, 229, NULL, NULL, 'fr', 3, 1, 1, 1),
(NULL, 'Proporción de escuelas de educación primaria con códigos de conducta de docentes y de la escuela desarrollados e implementados', NULL, 403, 'B 9.1', 'fr', 1, 1, 1, 1),
(NULL, 'Proporción de escuelas primarias que han implementado de manera efectiva un mecanismo de quejas', NULL, 403, 'B 9.2', 'fr', 2, 1, 1, 1),
(NULL, 'Aumento en la participación (en un XX%) de líderes escolares en reuniones de gestión escolar para asegurar que los recursos humanos, financieros y físicos se gestionen para tratar las barreras de acceso y aprendizaje de todos los niños y niñas', NULL, 403, 'B 9.3', 'fr', 3, 1, 1, 1),
('Aumento de la recolección de  datos con perspectiva de género', NULL, 229, NULL, NULL, 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de metodologías y enfoques dirigidos a recopilar datos de las estudiantes', NULL, 407, 'G 1.5', 'fr', 1, 1, 1, 1),
('Mejoramiento de la seguridad de  las estudiantes en la escuela', NULL, 229, NULL, NULL, 'fr', 5, 1, 1, 1),
(NULL, 'Proporción de medidas de seguridad y prevención de SGBV', NULL, 409, 'G 1.7', 'fr', 1, 1, 1, 1),
('Mejoramiento del acceso al aprendizaje a distancia alternativo para las estudiantes durante COVID-19', NULL, 229, NULL, NULL, 'fr', 6, 1, 1, 1),
(NULL, 'Proporción de intervenciones para asegurar que las estudiantes de primaria \r\nacceden a aprendizaje a distancia de calidad, inclusivo y alternativo', NULL, 411, 'G 1.8', 'fr', 1, 1, 1, 1),
('Políticas a nivel nacional/ local son más capaces de promover acceso igualitario a servicios ECCD de calidad', NULL, 239, NULL, NULL, 'fr', 1, 1, 1, 1),
(NULL, 'Avances en relación con las prioridades de la política e incidencia de SC que promueven la gratuidad y obligatoriedad de a) preescolar; b) los servicios de ECCD para todos', NULL, 413, 'E 3.1', 'fr', 1, 1, 1, 1),
(NULL, 'Número de iniciativas/políticas de incidencia que promueven la gratuidad y obligatoriedad inclusiva a) preescolar; b) servicios ECCD realizados /difundidos / discutidos', NULL, 413, 'E 3.3', 'fr', 2, 1, 1, 1),
(NULL, '% del aumento de presupuestos de educación a nivel municipal/central para la educación preescolar y servicios ECCD para la población desfavorecida', NULL, 413, 'E 3.4', 'fr', 3, 1, 1, 1),
(NULL, '% de aumento de los presupuestos de educación a nivel municipal/ central para ECCD o educación preescolar y la niñez más marginada (niños y niñas con discapacidad, niños y niñas con necesidades educativas individuales, niños y niñas en situación de calle, niños y niñas de familias bajo el umbral de la pobreza y niños y niñas de minoría étnica)', NULL, 413, 'E 3.4 Inclusivo', 'fr', 4, 1, 1, 1),
('Políticas a nivel nacional/ local son más capaces de  promover acceso igualitario a la  educación primaria de calidad', NULL, 239, NULL, NULL, 'fr', 2, 1, 1, 1),
(NULL, 'Avances en relación con las prioridades políticas e incidencia de SC para promover el acceso a la educación sin discriminación', NULL, 418, 'B 4.1', 'fr', 1, 1, 1, 1),
(NULL, '% del aumento de presupuestos de educación a nivel municipal/ central para la educación primaria para todos los niños y las niñas', NULL, 418, 'B 4.2', 'fr', 2, 1, 1, 1),
(NULL, '% de aumento de los presupuestos de educación a nivel municipal/ central para la educación básica que tiene por objetivo la niñez excluida y más marginada (niños y niñas con discapacidad, niños y niñas con necesidades educativas individuales, niños y niñas en situación de calle, niños y niñas de familias bajo el umbral de la pobreza y niños y niñas de minoría étnica)', NULL, 418, 'B 4.2 Inclusive', 'fr', 3, 1, 1, 1),
(NULL, 'Número de iniciativas y campañas de incidencia para medidas concretas de política que promueven educación gratuita y obligatoria para todos los niños y niñas en la escuela primaria', NULL, 418, 'B 4.3', 'fr', 5, 1, 1, 1),
('Mejoramiento del conocimiento, actitudes y prácticas de padres/ cuidadores de niños y niñas en edad de educación primaria y miembros de la comunidad frente a la educación', NULL, 239, NULL, NULL, 'fr', 3, 1, 1, 1),
(NULL, 'Número de PTAs (asociaciones de madres y padres de estudiantes alumnos) establecidos o fortalecidos que incluyen representación de padres/ cuidadores de niños y niñas con necesidades educativas individuales/ /niñez con discapacidad', NULL, 423, 'B 8.4', 'fr', 1, 1, 1, 1),
('Aumento de representación  de género, discapacidad y  minorias en PTAs y SMCs', NULL, 239, NULL, NULL, 'fr', 4, 1, 1, 1),
(NULL, 'Proporción de PTAs y SMCs que promueven la inclusión', NULL, 425, 'G 1.6', 'fr', 1, 1, 1, 1),
('Aumento del número de niñas  con discapacidad matriculadas  en la escuela primaria', NULL, 239, NULL, NULL, 'fr', 5, 1, 1, 1),
(NULL, 'Número de iniciativas y campañas de incidencia para concientizar sobre el derecho a la educación de niñas con discapacidad', NULL, 427, 'G 1.9', 'fr', 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `relevant_indicators`
--
ALTER TABLE `relevant_indicators`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `relevant_indicators`
--
ALTER TABLE `relevant_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
