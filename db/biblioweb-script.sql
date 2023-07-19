-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2023 a las 22:36:46
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nombre_completo` varchar(20) NOT NULL,
  `foto_perfil` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nombre_completo`, `foto_perfil`) VALUES
(1, 'Dante Alighieri', 'https://api.dicebear.com/6.x/lorelei/svg?seed=dantealighieri'),
(2, 'Charles Baudelaire', 'https://api.dicebear.com/6.x/lorelei/svg?seed=charlesbaudelaire'),
(3, 'Walt Whitman', 'https://api.dicebear.com/6.x/lorelei/svg?seed=waltwhitman'),
(4, 'Pablo Neruda', 'https://api.dicebear.com/6.x/lorelei/svg?seed=pabloneruda'),
(5, 'Edgar Allan Poe', 'https://api.dicebear.com/6.x/lorelei/svg?seed=edgarallanpoe'),
(6, 'Sylvia Plath', 'https://api.dicebear.com/6.x/lorelei/svg?seed=sylviaplath'),
(7, 'Juan Ramón Jimenez', 'https://api.dicebear.com/6.x/lorelei/svg?seed=juanramonjimenez'),
(8, 'Vicente Huidobro', 'https://api.dicebear.com/6.x/lorelei/svg?seed=vicentehuidobro'),
(9, 'Federico García Lorc', 'https://api.dicebear.com/6.x/lorelei/svg?seed=federicogarcialorca'),
(10, 'Lewis Carroll', 'https://api.dicebear.com/6.x/lorelei/svg?seed=lewiscarroll'),
(11, 'Corín Tellado', 'https://api.dicebear.com/6.x/lorelei/svg?seed=corintellado'),
(12, 'J.K. Rowling', 'https://api.dicebear.com/6.x/lorelei/svg?seed=jkrowling'),
(13, 'J.R.R. Tolkien', 'https://api.dicebear.com/6.x/lorelei/svg?seed=jrrtolkien'),
(14, 'Brandon Sanderson', 'https://api.dicebear.com/6.x/lorelei/svg?seed=brandonsanderson'),
(15, 'Patrick Rothfuss', 'https://api.dicebear.com/6.x/lorelei/svg?seed=patrickrothfuss'),
(16, 'Leigh Bardugo', 'https://api.dicebear.com/6.x/lorelei/svg?seed=leighbardugo'),
(17, 'Steven Erikson', 'https://api.dicebear.com/6.x/lorelei/svg?seed=stevenerikson'),
(18, 'Ursula K. Le Guin', 'https://api.dicebear.com/6.x/lorelei/svg?seed=ursulakleguin'),
(19, 'John Green', 'https://api.dicebear.com/6.x/lorelei/svg?seed=johngreen'),
(20, 'Jojo Moyes', 'https://api.dicebear.com/6.x/lorelei/svg?seed=jojomoyes'),
(21, 'Kiera Cass', 'https://api.dicebear.com/6.x/lorelei/svg?seed=kieracass'),
(22, 'Sarah J. Maas', 'https://api.dicebear.com/6.x/lorelei/svg?seed=sarahjmaas'),
(23, 'Graeme Simsion', 'https://api.dicebear.com/6.x/lorelei/svg?seed=graemesimsion'),
(24, 'Gabriel García Márqu', 'https://api.dicebear.com/6.x/lorelei/svg?seed=gabrielgarciamarquez'),
(25, 'E.L. James', 'https://api.dicebear.com/6.x/lorelei/svg?seed=eljames'),
(26, 'Cecelia Ahern', 'https://api.dicebear.com/6.x/lorelei/svg?seed=ceceliaahern'),
(27, 'Nicholas Sparks', 'https://api.dicebear.com/6.x/lorelei/svg?seed=nicholassparks'),
(28, 'Emily Hughes', 'https://api.dicebear.com/6.x/lorelei/svg?seed=emilyhughes'),
(29, 'Isabel Ruiz', 'https://api.dicebear.com/6.x/lorelei/svg?seed=isabelruiz'),
(30, 'Ilan Brenman', 'https://api.dicebear.com/6.x/lorelei/svg?seed=ilanbrenman'),
(31, 'Davide Cali', 'https://api.dicebear.com/6.x/lorelei/svg?seed=davidecali'),
(32, 'Robert Munsch', 'https://api.dicebear.com/6.x/lorelei/svg?seed=robertmunsch'),
(33, 'Olga de Dios', 'https://api.dicebear.com/6.x/lorelei/svg?seed=olgadedios'),
(34, 'Giles Andreae', 'https://api.dicebear.com/6.x/lorelei/svg?seed=gilesanreae'),
(35, 'Luis Amavisca', 'https://api.dicebear.com/6.x/lorelei/svg?seed=luisamavisca'),
(36, 'Luisa Aguilar', 'https://api.dicebear.com/6.x/lorelei/svg?seed=luisaaguilar'),
(37, 'Beatriz Moncó Reboll', 'https://api.dicebear.com/6.x/lorelei/svg?seed=beatrizmoncorebollo'),
(38, 'Julio Verne', 'https://api.dicebear.com/6.x/lorelei/svg?seed=julioverne'),
(39, 'Bernard Cornwell', 'https://api.dicebear.com/6.x/lorelei/svg?seed=bernardcornwell'),
(40, 'David Baldacci', 'https://api.dicebear.com/6.x/lorelei/svg?seed=davidbaldacci'),
(41, 'Clive Cussler', 'https://api.dicebear.com/6.x/lorelei/svg?seed=clivecussler'),
(42, 'Michael Connelly', 'https://api.dicebear.com/6.x/lorelei/svg?seed=michaelconnelly'),
(43, 'Andrzej Sapkowski', 'https://api.dicebear.com/6.x/lorelei/svg?seed=andrzejsapkowski'),
(44, 'Douglas Preston', 'https://api.dicebear.com/6.x/lorelei/svg?seed=douglaspreston'),
(45, 'Robin Hobb', 'https://api.dicebear.com/6.x/lorelei/svg?seed=robinhobb'),
(46, 'Dan Brown', 'https://api.dicebear.com/6.x/lorelei/svg?seed=danbrown'),
(47, 'Gary Keller', 'https://api.dicebear.com/6.x/lorelei/svg?seed=garykeller'),
(48, 'Anthony Robbins', 'https://api.dicebear.com/6.x/lorelei/svg?seed=anthonyrobbins'),
(49, 'Austin Kleon', 'https://api.dicebear.com/6.x/lorelei/svg?seed=austinkleon'),
(50, 'Cal Newport', 'https://api.dicebear.com/6.x/lorelei/svg?seed=calnewport'),
(51, 'Adam Grant', 'https://api.dicebear.com/6.x/lorelei/svg?seed=adamgrant'),
(52, 'Robert Stevenson', 'https://api.dicebear.com/6.x/lorelei/svg?seed=robertstevenson'),
(53, 'Autor Ejemplo', 'https://api.dicebear.com/6.x/lorelei/svg?seed=autorejemplo'),
(54, 'Jhovan', 'https://api.dicebear.com/6.x/lorelei/svg?seed=jhovan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`) VALUES
(1, 'Poesía'),
(2, 'Fantasía'),
(3, 'Novela Romántica'),
(4, 'Cuento'),
(5, 'Terror'),
(6, 'Aventura'),
(7, 'Desarrollo Personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `anio_publicacion` int(11) NOT NULL,
  `num_paginas` int(11) NOT NULL,
  `idioma` varchar(20) NOT NULL,
  `idioma_original` varchar(20) NOT NULL,
  `descripcion` varchar(550) NOT NULL,
  `rating` int(11) NOT NULL,
  `fragmento` varchar(350) NOT NULL,
  `portada` varchar(120) NOT NULL,
  `visitas` int(11) DEFAULT 0,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `id_genero`, `id_autor`, `titulo`, `anio_publicacion`, `num_paginas`, `idioma`, `idioma_original`, `descripcion`, `rating`, `fragmento`, `portada`, `visitas`, `fecha_creacion`) VALUES
(1, 1, 1, 'La Divina Comedia', 1320, 432, 'Español', 'Italiano', 'La Divina Comedia es un poema épico escrito por Dante Alighieri. Es considerado uno de los grandes clásicos de la literatura mundial y se divide en tres partes: Infierno, Purgatorio y Paraíso.', 4, 'En medio del camino de nuestra vida me encontré en una selva oscura', '/biblioweb/public/assets/img/covers/la-divina-comedia.jpg', 0, '2023-06-16 19:15:57'),
(2, 1, 2, 'Las Flores del Mal', 1857, 290, 'Español', 'Francés', 'Las Flores del Mal es una colección de poemas escritos por Charles Baudelaire. Fue muy controvertida en su época debido a su temática erótica y desafiante, pero hoy es considerada como una obra maestra literaria.', 4, 'Hipócrita lector, mi semejante, mi hermano!', '/biblioweb/public/assets/img/covers/las-flores-del-mal.jpg', 0, '2023-06-16 19:15:57'),
(3, 1, 3, 'Hoja de Hierba', 1855, 600, 'Español', 'Inglés', 'Hoja de Hierba es una colección de poemas escritos por Walt Whitman. Es considerada como uno de los grandes clásicos de la poesía estadounidense y ha sido muy influyente en la literatura del siglo XX.', 4, 'Yo celebro mi yo, Y lo que yo asumo, tú también asumirás.', '/biblioweb/public/assets/img/covers/hoja-de-hierba.jpg', 0, '2023-06-16 19:15:57'),
(4, 1, 4, 'Cien Sonetos de Amor', 1959, 120, 'Español', 'Español', 'Cien Sonetos de Amor es una colección de poemas escrita por el poeta chileno Pablo Neruda. Está compuesta por 100 sonetos que reflejan diferentes etapas del amor y ha sido muy influyente en la poesía hispanohablante.', 4, 'Matilde, nombre de planta o piedra o vino, del fruto tal vez más claro...', '/biblioweb/public/assets/img/covers/cien-sonetos-de-amor.jpg', 0, '2023-06-16 19:15:57'),
(5, 1, 5, 'El Cuervo y otros poemas', 1845, 100, 'Español', 'Inglés', 'El Cuervo y otros poemas es una colección de obras poéticas escrita por Edgar Allan Poe. Incluye su famoso poema \"El cuervo\", así como otras piezas destacadas que reflejan la oscuridad, melancolía y misticismo característicos del autor.', 5, 'Una vez, al filo de una lúgubre media noche...', '/biblioweb/public/assets/img/covers/el-cuervo-y-otros-poemas.jpg', 0, '2023-06-16 19:15:57'),
(6, 1, 6, 'Ariel', 1965, 81, 'Español', 'Inglés', 'Ariel es una colección de poesía escrita por Sylvia Plath. Esta obra, publicada póstumamente, incluye poemas intensos y emocionales que abordan temas como la muerte, el género y la identidad personal.', 5, 'Amoroso melocotón recién nacido entre las hojas...', '/biblioweb/public/assets/img/covers/ariel.jpg', 0, '2023-06-16 19:15:57'),
(7, 1, 7, 'Platero y yo', 1914, 200, 'Español', 'Español', '\"Platero y yo\" es una obra literaria escrita por Juan Ramón Jiménez que narra las vivencias del autor junto a su burro Platero en Moguer, un pueblo andaluz. Aunque no es poesía en sí, su estilo lírico y prosa poética le dan características similares.', 5, 'Platero es pequeño...\"', '/biblioweb/public/assets/img/covers/platero-y-yo.jpg', 0, '2023-06-16 19:15:57'),
(8, 1, 4, 'Odas elementales', 1954, 225, 'Español', 'Español', '\"Odas elementales\" es una colección de poesía escrita por Pablo Neruda. En ella, el autor rinde homenaje a objetos y elementos cotidianos, como la comida, la naturaleza y las relaciones humanas.', 4, 'Cebolla, luminosa redoma...', '/biblioweb/public/assets/img/covers/odas-elementales.jpg', 0, '2023-06-16 19:15:57'),
(9, 1, 8, 'Altazor o el viaje en paracaídas', 1931, 160, 'Español', 'Español', 'Altazor o el viaje en paracaídas\" es un poema vanguardista escrito por Vicente Huidobro. La obra narra la caída del protagonista, Altazor, desde lo alto del cielo hasta su muerte, y es considerado uno de los hitos de la poesía moderna.', 4, 'Voy a hundirme hasta la médula del sueño. Dormiré días y noches y al cabo me despertaré cantando', '/biblioweb/public/assets/img/covers/altazor.jpg', 0, '2023-06-16 19:15:57'),
(10, 1, 9, 'Sonetos del amor oscuro', 1983, 64, 'Español', 'Español', '\"Sonetos del amor oscuro\" es una colección de sonetos escrita por Federico García Lorca. Estos poemas, publicados póstumamente, abordan temas como la pasión y el deseo.', 5, 'El poeta dice ser fiel a su lira y al fin se aleja...', '/biblioweb/public/assets/img/covers/sonetos-del-amor-oscuro.jpg', 0, '2023-06-16 19:15:57'),
(11, 2, 10, 'Alicia en el país de las maravillas', 1865, 184, 'Español', 'Inglés', 'La historia cuenta cómo una niña llamada Alicia cae por un agujero, encontrándose en un mundo peculiar y extraño, poblado por humanos y criaturas antropomórficas', 5, 'El Gato sonrió al ver a Alicia. Parecía tener buen carácter, consideró Alicia; pero también tenía unas uñas muy largas y un gran número de dientes, de forma que pensó que convendría tratarlo con el debido respeto.', '/biblioweb/public/assets/img/covers/alicia-en-el-pais-de-las-maravillas.jpg', 0, '2023-06-16 19:15:57'),
(12, 2, 11, 'Anhelo', 2020, 672, 'Español', 'Inglés', 'Una novela que aborda temas de deseo, amor, pérdida y autodescubrimiento. La trama sigue a los personajes principales mientras enfrentan sus propias luchas internas y externas en la búsqueda de sus deseos más profundos. A medida que se desarrolla la historia, el lector es llevado en un viaje emocional donde las conexiones entre los personajes se entrelazan con desenlaces inesperados. El libro destaca cómo las decisiones de cada individuo pueden afectar no solo su vida sino también la de aquellos a su alrededor', 4, 'Estoy en la puerta que da a la pista de despegue mirando la avioneta en la que estoy a punto de subirme y esforzándome al máximo por no morirme del miedo. Es más fácil decirlo que hacerlo.', '/biblioweb/public/assets/img/covers/anhelo.jpg', 0, '2023-06-16 19:15:57'),
(13, 2, 12, 'Harry Potter y la piedra filosofal', 1997, 256, 'Español', 'Inglés', 'Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y el insoportable primo Dudley. Harry se siente muy triste y solo, hasta que un buen día recibe una carta que cambiará su vida para siempre. En ella le comunican que ha sido aceptado como alumno en el Colegio Hogwarts de Magia', 5, 'No esperaba que sucediera así, susurró Harry mientras miraban a toda prisa todo a su alrededor. ¡Cierra la maldita puerta!, gruñó Ron, incapaz de creer lo que acababa de oír. La señora Norris estaba en el pasillo, ronroneando contenta.', '/biblioweb/public/assets/img/covers/harry-potter.jpg', 0, '2023-06-16 19:15:57'),
(14, 2, 13, 'El Señor de los Anillos 1: La Comunidad del Anillo', 1954, 423, 'Español', 'Inglés', 'En la adormecida e idílica Comarca, un joven hobbit recibe un encargo: custodiar el Anillo Único y emprender el viaje para su destrucción en las Grietas del Destino. Consciente de la importancia de su misión, Frodo abandona la Comarca e inicia el camino hacia Mordor con la compañía inesperada de Sam, Pippin y Merry', 3, 'No hubo en el Anillo ningún cambio aparente. Un momento después Gandalf se levantó, cerró los postigos y corrió las cortinas. La habitación se oscureció, se hizo un silencio y se oyó el ruido de las tijeras de Sam, ahora cerca de la ventana.', '/biblioweb/public/assets/img/covers/el-senior-de-los-anillos-comunidad-anillo.jpg', 0, '2023-06-16 19:15:57'),
(15, 2, 14, 'Elantris', 2005, 496, 'Español', 'Inglés', 'Antaño famosa sede de inmortales, un lugar repleto de poderosa magia, Elantris ha caído en desgracia. Ahora sólo acoge a los nuevos muertos en vida, postrados en una insufrible no-vida tras una misteriosa y terrible transformación', 3, 'Raoden yacía en el suelo, respirando con dificultad mientras observaba las nubes flotar por encima. Su cuerpo adolorido no parecía dispuesto a moverse, pero estaba vivo. Había sobrevivido a la transformación', '/biblioweb/public/assets/img/covers/elantris.jpg', 0, '2023-06-16 19:15:57'),
(16, 2, 14, 'El camino de los reyes', 2010, 1200, 'Español', 'Inglés', 'La trama sigue a varios personajes principales que se entrelazan a lo largo del libro, incluyendo al asesino Kaladin Stormblessed, quien lucha contra la desesperación mientras lidia con su pasado como soldado; Shallan Davar, una joven noble cuyo objetivo es robar un artefacto místico para salvar a su familia empobrecida; y Dalinar Kholin, un alto príncipe atormentado por visiones proféticas', 4, 'Hizo a un lado la página. Algunos hombres coleccionaban trofeos. Otros coleccionaban armas o escudos. Muchos coleccionaban esferas. Shallan coleccionaba personas. Personas, y criaturas interesantes. Tal vez era debido a que había pasado gran parte de su juventud en una prisión virtual', '/biblioweb/public/assets/img/covers/el-camino-de-los-reyes.jpg', 0, '2023-06-16 19:15:57'),
(17, 2, 15, 'El nombre del viento', 2007, 873, 'Español', 'Inglés', 'La historia sigue a Kvothe, un músico y mago talentoso que narra sus aventuras desde su infancia hasta su vida adulta mientras busca conocimiento, poder y venganza. A lo largo del relato, se entrelazan elementos como la música, la magia llamada simpatía, misteriosos seres llamados Chandrian y una escuela de artes arcanas conocida como la Universidad', 2, 'Si hubiera comido algo podría decir que era pasada la hora de comer. Estaba mendigando en la Rambla del Comercio; hasta ese momento había conseguido dos patadas (de un guardia y de un mercenario), tres empujones (de dos carromateros y de un marinero)', '/biblioweb/public/assets/img/covers/el-nombre-del-viento.jpg', 0, '2023-06-16 19:15:57'),
(18, 2, 16, 'Seis de Cuervos', 2015, 548, 'Español', 'Inglés', 'Kaz Brekker, un genio del crimen que regenta un antro de juegos de azar y apuestas conocido como el Club Cuervo, debe reunir a un grupo de seis personas con las habilidades necesarias para entrar y salir de la Corte de Hielo, una fortaleza inexpugnable que mantiene bajo llave un secreto que podría dinamitar el equilibrio de poder en el mundo', 5, 'Nina había estado en las afueras del grupo desde el principio. Matthias también lo había notado. Ella era grácil como un gato y alta para una mujer; su cabello era una masa rizada color canela rojiza que apenas podía contenerse en su trenza despeinada', '/biblioweb/public/assets/img/covers/seis-de-cuervos.jpg', 0, '2023-06-16 19:15:57'),
(19, 2, 17, 'Los jardines de la Luna', 1999, 776, 'Español', 'Inglés', 'La novela detalla las diversas luchas por el poder en una región intercontinental dominada por el imperio de Malazan. Es notable por el uso de la magia y su estructura inusual en la trama. Los jardines de la Luna se centra en la campaña imperial para conquistar la ciudad de Darujhistan en el continente de Genabackis', 4, 'Enfriadas estas cenizas, abrimos un antiguo libro. Sus páginas, manchadas de aceite, narran las historias de los Caídos, del imperio en guerra, de palabras yermas. Mengua el fuego, su fulgor y las chispas de la vida no son sino recuerdos vistos por ojos entornados. Qué no suscitan en mi mente. Qué no dibujan mis pensamientos tras abrir el Libro de ', '/biblioweb/public/assets/img/covers/los-jardines-de-la-luna.jpg', 0, '2023-06-16 19:15:57'),
(20, 2, 18, 'Un mago de Terramar', 1968, 264, 'Español', 'Inglés', 'La trama se ambienta en el archipiélago ficticio de Terramar, y se centra en un joven mago llamado Ged, que nació en la isla de Gont. Desde pequeño da muestras de poseer un gran poder, y por eso asiste a una escuela de magia, donde su naturaleza conflictiva lo hace pelearse con uno de sus compañeros de estudio', 3, 'En el mundo de Terramar hay dragones y espectros, talismanes y poderes, y las leyes de la magia son tan inevitables y exactas como las leyes naturales. Un principio fundamental rige en ese mundo: el delicado equilibrio entre la muerte y la vida, que muy pocos hombres pueden alterar, o restaurar. Pues la restauración del orden cósmico corresponde na', '/biblioweb/public/assets/img/covers/un-mago-de-terramar.jpg', 0, '2023-06-16 19:15:57'),
(21, 3, 19, 'Bajo la misma estrella', 2012, 313, 'Español', 'Inglés', 'Una historia que explora cuán exquisita y trágica puede ser la aventura de saberse vivo y querer a alguien. Emotiva, irónica y afilada. Una novela teñida de humor y de tragedia que habla de nuestra capacidad para soñar incluso en las circunstancias más difíciles. A Hazel y a Gus les gustaría tener vidas más corrientes', 5, 'A finales del invierno de mi decimoséptimo año de vida, mi madre llegó a la conclusión de que estaba deprimida, seguramente porque apenas salía de casa, pasaba mucho tiempo en la cama, leía el mismo libro una y otra vez, casi nunca comía  y dedicaba buena parte de mi abundante tiempo libre a pensar en la muerte', '/biblioweb/public/assets/img/covers/bajo-la-misma-estrella.jpg', 0, '2023-06-16 19:15:57'),
(22, 3, 20, 'Yo antes de ti', 2012, 369, 'Español', 'Inglés', 'Reúne a dos personas que no podrían tener menos en común en una novela conmovedoramente romántica con una pregunta: ¿Qué decidirías cuando hacer feliz a la persona a la que amas significa también destrozarte el corazón?', 5, 'Cuando él sale del baño ella está despierta, recostada contra las almohadas, hojeando los folletos de viaje que había junto a la cama. Viste una de las camisetas de él y su larga melena enmarañada evoca imágenes de la noche anterior. Él se queda ahí, disfrutando de ese breve recuerdo, mientras se seca el pelo con una toalla', '/biblioweb/public/assets/img/covers/yo-antes-de-ti.jpg', 0, '2023-06-16 19:15:57'),
(23, 3, 21, 'La Selección', 2012, 327, 'Español', 'Inglés', 'Para treinta y cinco chicas, La Selección es una oportunidad que sólo se presenta una vez en la vida. La oportunidad de escapar de la vida que les ha tocado por nacer en una determinada familia. La oportunidad de que las trasladen a un mundo de trajes preciosos y joyas que no tienen precio', 5, 'Aquellos ojos verdes escrutaron el interior de mi alma, y sentí aquella chispa que nos unía y que no había compartido con nadie más. Yo también quería nuestro futuro feliz.', '/biblioweb/public/assets/img/covers/la-seleccion.jpg', 0, '2023-06-16 19:15:57'),
(24, 3, 22, 'Una corte de rosas y espinas', 2015, 432, 'Español', 'Inglés', 'Cuando la cazadora de diecinueve años Feyre mata a un lobo en el bosque, una criatura bestial irrumpe en su casa para exigir una retribución. Trasladada a una tierra mágica y engañosa que solo conoce a través de leyendas, Feyre descubre que su captor no es un animal, sino Tamlin: una criatura inmortal y letal que alguna vez reinó en su mundo.', 5, 'El bosque se había transformado en un liberito de hielo y nieve. Yo había estado monitoreando los alrededores de l sotobosque durante una hora, y mi punto de observación, en la horqueta de una rama, se había convertido en una atalaya inútil. El viento soplaba en ráfagas espesas que borraban mis huellas.', '/biblioweb/public/assets/img/covers/corte-de-rosas-y-espinas.jpg', 0, '2023-06-16 19:15:57'),
(25, 3, 23, 'El proyecto esposa', 2013, 329, 'Español', 'Inglés', 'Tiene un protagonista excepcional: el inteligente, obsesivo y literal Don Tillman, para quien navegar por este mundo de emociones complejas e incoherentes, poblado por seres que a menudo dicen exactamente lo contrario de lo que piensan, constituye una tarea tan ardua como desconcertante', 5, 'Era una declaración sumamente extraordinaria. Y de una lógica aplastante. Yo había dado por supuesto que el amor romántico siempre sería algo ajeno al ámbito de mi experiencia, pero explicaba a la perfección mi situación actual. Quise asegurarme', '/biblioweb/public/assets/img/covers/el-proyecto-esposa.jpg', 0, '2023-06-16 19:15:57'),
(26, 3, 24, 'El amor en los tiempos del cólera', 2012, 313, 'Español', 'Español', 'Relata la historia de amor entre Fermina Daza y Florentino Ariza. Un amor que tendrá que enfrentarse al tiempo pero que no morirá', 5, 'No le dijo a nadie que se iba, no se despidió de nadie, con el hermetismo férreo con que sólo le reveló a la madre el secreto de su pasión reprimida, pero a la víspera del viaje cometió a conciencia una locura última del corazón que bien pudo costarle la vida', '/biblioweb/public/assets/img/covers/el-amor-en-tiempos-de-colera.jpg', 0, '2023-06-16 19:15:57'),
(27, 3, 25, 'Cincuenta sombras de Grey', 2011, 530, 'Español', 'Inglés', 'Narra la historia de Anastasia Steele, una joven estudiante, que cursa la carrera de Literatura en la Universidad de Washington, y que vive con su mejor amiga, Katherine Kavanagh, quien escribe para el periódico estudiantil de su universidad. Debido a un resfriado, Katherine persuade a Ana para que tome su lugar en la entrevista que le haría a Christian Grey, un joven empresario de veintisiete años, apuesto y exitoso', 5, 'Estuve dando vueltas a diversas opciones. Estoy muy confundida. La idea que tiene Christian de una relación se parece mucho a una oferta de empleo, con sus horarios, la descripción del trabajo y un procedimiento de resolución de conflictos bastante riguroso. No imaginaba así mi primera historia de amor', '/biblioweb/public/assets/img/covers/cincuenta-sombras-de-grey.jpg', 0, '2023-06-16 19:15:57'),
(28, 3, 26, 'Donde termina el arco iris', 2004, 512, 'Español', 'Inglés', 'Nos presenta una selección de los divertidos y frescos diálogos que Rosie y Alex intercambian, y que nos llevan a conocer en profundidad sus respectivas vidas: sus complicados matrimonios y los esfuerzos por hacer sus sueños realidad', 5, 'Me alegró mucho verte. ¡Te vi fantástica! ¡Y NO estás gorda! La pequeña Katie no se mostró muy habladora, pero ya estoy perdidamente enamorado de ella. Hasta se me ocurrió robártela y llevármela conmigo de vuelta a Boston', '/biblioweb/public/assets/img/covers/donde-termina-el-arcoiris.jpg', 0, '2023-06-16 19:15:57'),
(29, 3, 27, 'Un paseo para recordar', 1999, 240, 'Español', 'Inglés', 'La historia de dos adolescentes que se enamoran a pesar de la disparidad de sus alusiones personales. Jamie era la última persona de la que se enamoraría Landon. Seria y conservadora, era lo opuesto a una chica \"cool\", pero a ella tampoco le importaba; hija de un pastor de la iglesia baptista de la ciudad, Jamie no tenía miedo en hacer saber a la gente que su fe era lo más importante en su vida, aunque ello le costara algunos amigos', 5, 'Estar enamorado de una niña como Jamie Sullivan era sin una duda la cosa más extraña que alguna vez me había pasado. No sólo por que era una niña en la que nunca había pensado antes de ese año -aunque habíamos crecido juntos- pero había algo diferente en la manera en que mis sentimientos hacia ella se desarrollaron', '/biblioweb/public/assets/img/covers/un-paseo-para-recordar.jpg', 0, '2023-06-16 19:15:57'),
(30, 3, 27, 'Diario De Una Pasion', 2004, 236, 'Español', 'Inglés', 'Es la historia de Noah Calhoun y Allie Hamilton, dos jóvenes adolescentes de Carolina del Norte que, a pesar de vivir en dos ambientes sociales muy diferentes, se enamoraron profundamente y pasaron juntos un verano inolvidable, antes de ser separados, primero por sus padres, y más tarde por la guerra', 5, 'Y a pesar de que no podía marcar el momento exacto -el día anterior después de la cena, o esa misma tarde en la canoa, o cuando habían visto los cisnes, o quizás incluso en ese momento, mientras caminaban de la mano- Allie supo que se había vuelto a enamorar de Noah Taylor Calhoun, nunca había dejado de estar enamorada de él', '/biblioweb/public/assets/img/covers/diario-de-una-pasion.jpg', 0, '2023-06-16 19:15:57'),
(31, 4, 28, 'Salvaje', 2022, 42, 'Castellano', 'Castellano', 'Salvaje es el brillante debut de la autora hawaiana Emily Hughes. Con frescura y desparpajo nos cuenta la historia de una niña que vive feliz en la naturaleza, donde los osos le han enseñado a comer, los pájaros a hablar y los zorros a jugar. Ella es audaz, valiente e increíblemente libre. Pero un día un nuevo animal entra en escena, un animal extrañamente parecido a ella.', 5, 'Nadie recordaba cómo había llegado la niña, pero a todos les pareció bien. El bosque entero la aceptó como una más. Pájaro le enseñó a hablar. Oso le enseñó a comer. Zorro le enseñó a jugar...', '/biblioweb/public/assets/img/covers/salvaje.jpg', 0, '2023-06-16 19:15:57'),
(32, 4, 29, 'Mujeres', 2020, 120, 'Español', 'Español', 'Mujeres es un libro escrito por Isabel Ruiz Ruiz. Presenta la vida de diversas mujeres destacadas en la historia, desde científicas hasta artistas y líderes políticas. A través de sus historias, el libro busca inspirar a las jóvenes y mostrarles el potencial que tienen para cambiar el mundo.', 5, 'No hay barrera, cerradura ni cerrojo que puedas imponer a la libertad de mi mente', '/biblioweb/public/assets/img/covers/mujeres.jpg', 0, '2023-06-16 19:15:57'),
(33, 4, 30, 'Las princesas también se tiran pedos', 2018, 32, 'Español', 'Portugués', 'Las princesas también se tiran pedos es un libro escrito por Ilan Brenman y Ionit Zilberman. De manera divertida y rompiendo estereotipos, el libro muestra que incluso las princesas tienen comportamientos normales como cualquier otra persona.', 4, 'Laura se levantó y empezó a pasar los dedos por el lomo de los libros, cuando, de repente, una motita de polvo cayó sobre la punta de su nariz. Juntó los ojos intentando observarla y, de un soplido, la hizo volver a subir.', '/biblioweb/public/assets/img/covers/las-princesas-tambien-pedos.jpg', 0, '2023-06-16 19:15:57'),
(34, 4, 31, 'Malena Ballena', 2015, 36, 'Español', 'Italiano', 'Malena Ballena es un libro escrito por Davide Cali y Sonja Bougaeva. Cuenta la historia de Malena, una ballena que se siente triste y excluida debido a su tamaño. A medida que conoce a otros animales, descubre la importancia de la amistad y la aceptación.', 4, 'Malena siempre se las arreglaba para ser la última en meterse en la piscina. Porque, cada vez que se tiraba al agua, provocaba una enorme ola y muchas voces gritaban: ¡Malena es una ballena!', '/biblioweb/public/assets/img/covers/malena-ballena.jpg', 0, '2023-06-16 19:15:57'),
(35, 4, 32, 'La princesa vestida con una bolsa de papel', 1992, 32, 'Español', 'Inglés', 'La princesa vestida con una bolsa de papel es un libro escrito por Robert Munsch y Michael Martchenko. Cuenta la historia de una princesa poco convencional que prefiere vestirse con una bolsa de papel en lugar de usar ropa elegante. El libro enseña lecciones de aceptación y autoestima.', 4, 'En un reino encantado, una princesa singular desafía las convenciones al vestirse con una bolsa de papel. Su autenticidad y valentía la llevan a enfrentar peligros y romper encantamientos, demostrando que la verdadera belleza trasciende las apariencias superficiales. Un cuento inspirador de amor y valentía.', '/biblioweb/public/assets/img/covers/la-princesa-bolsa-papel.jpg', 0, '2023-06-16 19:15:57'),
(36, 4, 33, 'Monstruo rosa', 2013, 36, 'Español', 'Español', 'Monstruo rosa es un libro escrito por Olga de Dios. Cuenta la historia de un monstruo que nace en un mundo en blanco y negro y se siente diferente a los demás. A medida que explora su entorno, descubre la diversidad y la importancia de ser uno mismo.', 5, 'Elizabeth era una princesa muy linda. Vivía en un castillo y tenía lujosos vestidos de princesa. Se iba a casar con un príncipe llamado Ronaldo.', '/biblioweb/public/assets/img/covers/monstruo-rosa.jpg', 0, '2023-06-16 19:15:57'),
(37, 4, 34, 'Las jirafas no pueden bailar', 1999, 32, 'Español', 'Inglés', 'Las jirafas no pueden bailar es un libro escrito por Giles Andreae y Guy Parker-Rees. Narra la historia de una jirafa llamada Gerald que sueña con bailar, pero se siente desanimada por sus largas y torpes piernas. A través de la ayuda de un amigo, Gerald descubre que todos tienen su propio ritmo y talento.', 3, 'Con la cabeza agachada y arrastrando las pezuñas, chufa se volvió a casa más triste y sola que nunca', '/biblioweb/public/assets/img/covers/jirafas-no-bailar.jpg', 0, '2023-06-16 19:15:57'),
(38, 4, 35, 'La princesa Li', 2021, 40, 'Español', 'Español', 'La princesa Li es un libro escrito por Elena Rendeiro y Luis Amavisca. Cuenta la historia de la princesa Li, quien decide enfrentarse a los estereotipos de género y vivir su vida según sus propios términos. El libro promueve la igualdad de género y la libertad de elección.', 5, 'La princesa Li vivía con su padre, el rey Wan Tan, en un hermoso palacio... ella amaba a Beatriz, una chica de una tierra lejana. Las dos eran muy felices hasta que Wan Tan mandó llamar a la princesa: «Había llegado el día de casarse con un joven de la corte».', '/biblioweb/public/assets/img/covers/la-princesa-li.jpg', 0, '2023-06-16 19:15:57'),
(39, 4, 36, 'Orejas de mariposa', 2006, 28, 'Español', 'Portugués', 'Orejas de mariposa es un libro escrito por Luisa Aguilar y André Neves. Narra la historia de una niña llamada Lucía que se siente avergonzada por tener las orejas grandes. A través de diversas situaciones, Lucía aprende a aceptarse a sí misma y a valorar su singularidad.', 4, 'Mamá, ¿tú crees que soy una orejotas?». <<No, hija. Tienes orejas de mariposa». Pero, ¿cómo son las orejas de mariposa?', '/biblioweb/public/assets/img/covers/orejas-de-mariposa.jpg', 0, '2023-06-16 19:15:57'),
(40, 4, 37, 'Mercedes quiere ser bombera', 2019, 32, 'Español', 'Español', 'Mercedes quiere ser bombera es un libro escrito por Beatriz Moncó y Mabel Piérola. Cuenta la historia de Mercedes, una niña que desafía los estereotipos de género al soñar con convertirse en bombera. El libro inspira a las niñas a perseguir sus sueños y a creer en sí mismas.', 4, 'Mercedes y Miguel son amigos. Cada mañana van juntos al colegio, por el camino hablan de muchas cosas y se lo pasan muy bien. En el patio les esperan Isabel y Javier, dos hermanos mellizos, casi iguales, a quienes les gusta compartir la ropa y los juguetes', '/biblioweb/public/assets/img/covers/mercedes-quiere-ser-bombera.jpg', 0, '2023-06-16 19:15:57'),
(41, 6, 38, 'La Isla Misteriosa', 1874, 450, 'Español', 'Francés', 'Un grupo de náufragos lucha por sobrevivir en una isla desconocida llena de misterios y peligros.', 4, 'Los supervivientes exploraron la playa en busca de recursos.', '/biblioweb/public/assets/img/covers/la-isla-misteriosa.jpg', 0, '2023-06-16 19:15:57'),
(42, 6, 39, 'El Oro de los Dioses', 1987, 320, 'Español', 'Inglés', 'Un arqueólogo se embarca en una aventura para encontrar una antigua ciudad perdida llena de tesoros.', 3, 'El arqueólogo descendió por las escaleras antiguas, iluminado solo por una antorcha.', '/biblioweb/public/assets/img/covers/el-oro-de-los-dioses.jpg', 0, '2023-06-16 19:15:57'),
(43, 6, 52, 'El Tesoro del Pirata', 2005, 280, 'Español', 'Español', 'Un joven marinero se enfrenta a peligrosos piratas en su búsqueda por encontrar un legendario tesoro oculto.', 4, 'Con su espada en mano, el joven se lanzó al abordaje del barco pirata.', '/biblioweb/public/assets/img/covers/el-tesoro-del-pirata.jpg', 0, '2023-06-16 19:15:57'),
(44, 6, 40, 'La Montaña Prohibida', 2010, 400, 'Español', 'Inglés', 'Un alpinista intrépido se enfrenta a los desafíos de escalar una montaña maldita, llena de secretos y peligros mortales.', 5, 'El alpinista aseguró su cuerda y comenzó a ascender por la empinada pared de roca.', '/biblioweb/public/assets/img/covers/la-montania-prohibida.jpg', 0, '2023-06-16 19:15:57'),
(45, 6, 41, 'El Cetro Perdido', 1999, 350, 'Español', 'Francés', 'Un aventurero valiente se embarca en una misión para encontrar un cetro mágico que otorga poderes sobrenaturales.', 4, 'El aventurero atravesó la selva espesa con su machete en mano.', '/biblioweb/public/assets/img/covers/el-cetro-perdido.jpg', 0, '2023-06-16 19:15:57'),
(46, 6, 42, 'El Enigma de la Pirámide', 2003, 420, 'Español', 'Inglés', 'Un grupo de arqueólogos descubre un enigma oculto dentro de una antigua pirámide egipcia.', 3, 'Los arqueólogos resolvieron el enigma y una puerta secreta se abrió lentamente.', '/biblioweb/public/assets/img/covers/el-enigma-de-la-piramide.jpg', 0, '2023-06-16 19:15:57'),
(47, 6, 43, 'La Espada del Destino', 2015, 380, 'Español', 'Polaco', 'Un guerrero legendario se embarca en una búsqueda para encontrar una espada mágica que puede cambiar el curso de la historia.', 5, 'El guerrero desenvainó la espada y su brillo iluminó la oscuridad.', '/biblioweb/public/assets/img/covers/la-espada-del-destino.jpg', 0, '2023-06-16 19:15:57'),
(48, 6, 44, 'El Misterio de la Ciudad Perdida', 2008, 300, 'Español', 'Inglés', 'Un explorador audaz se aventura en una selva peligrosa en busca de una ciudad antigua desaparecida hace siglos.', 4, 'El explorador siguió las pistas hasta llegar a las ruinas cubiertas de vegetación.', '/biblioweb/public/assets/img/covers/el-misterio-ciudad-perdida.jpg', 0, '2023-06-16 19:15:57'),
(49, 6, 45, 'La Odisea del Navegante', 2012, 360, 'Español', 'Español', 'Un navegante solitario se embarca en una odisea épica a través de los océanos, enfrentando tormentas y desafíos mortales.', 4, 'El navegante se mantuvo firme mientras las olas golpeaban su barco.', '/biblioweb/public/assets/img/covers/la-odisea-del-navegante.jpg', 0, '2023-06-16 19:15:57'),
(50, 6, 46, 'El Secreto de la Isla', 2006, 400, 'Español', 'Inglés', 'Un grupo de exploradores descubre un secreto oculto en una isla remota, desatando una serie de eventos extraordinarios.', 3, 'Los exploradores se adentraron en la jungla, sin saber lo que encontrarían.', '/biblioweb/public/assets/img/covers/el-secreto-de-la-isla.jpg', 0, '2023-06-16 19:15:57'),
(51, 7, 47, 'Lo único', 2015, 329, 'Español', 'Inglés', '¿Has pensado en dividirte para poder llegar a solucionar todos aquellos asuntos de tu vida que te apremian? Tienes que saber que no sería una buena idea. Vivimos en un aluvión diario de correos electrónicos, tweets, y reuniones que demandan nuestra atención. Esto nos lleva a resultados mediocres, incumplimiento de plazos, menos dinero y más preocupaciones.¿Quieres ser más productivo en tu trabajo? ¿Quieres mejorar tu estilo de vida? En Lo único Gary Keller y Jay Papasan te muestran que el proceso es bastante sencillo.', 4, 'La clave del éxito radica en enfocarse en una sola cosa. La concentración nos permite alcanzar resultados extraordinarios. Evita la dispersión y dirige tu energía hacia lo que realmente importa. Identifica tu \'única cosa\' y trabaja con determinación y disciplina para lograrla.', '/biblioweb/public/assets/img/covers/lo-unico.jpg', 0, '2023-06-16 19:15:57'),
(52, 7, 48, 'Poder Sin Límites', 1996, 428, 'Español', 'Inglés', 'Esta sencilla máxima muestra elocuentemente la teoría básica de este libro: el problema esencial del desarrollo personal no está en las circunstancias, sino en nuestra actitud vital. Solemos pedirle a la vida un precio bajo, limitando nuestras ambiciones, siendo presas de la frustración o el miedo de ir más allá. Y esta actitud negativa es lo que Poder sin límites ayuda a combatir enseñándonos el poder oculto del cerebro, los mecanismos correctos de relación interpersonal e incluso hábitos alimentarios adecuados.', 5, 'El éxito en la vida no está determinado por las circunstancias externas, sino por las respuestas internas que elegimos dar. Nuestra actitud, nuestras creencias y nuestros patrones mentales moldean nuestro destino. Al tomar el control de nuestras emociones y enfocarnos en nuestras metas, podemos desatar nuestro verdadero potencial.', '/biblioweb/public/assets/img/covers/poder-sin-limites.jpg', 0, '2023-06-16 19:15:57'),
(53, 7, 49, 'Roba como un artista', 2012, 144, 'Español', 'Inglés', 'Nada es original, dice el autor, así que mejor acepta las influencias, instrúyete en el trabajo de los demás, reimagina y mezcla tu propio camino. Encuentra un pasatiempo que ames y conviértelo en tu trabajo: escribe el libro que te gustaría leer y la película que te gustaría ver. Y pues, ya sabes: no te endeudes, come sano, actúa con sentido común, ¡y atrévete a ser aventado y osado!', 4, 'El robo es la base de todo arte. Todo artista se apropia, mezcla y remezcla ideas para crear algo nuevo. No se trata de copiar literalmente, sino de tomar inspiración de otros y agregarle tu propio toque personal. El arte es un collage interminable de influencias, y nuestra tarea es encontrar nuestra voz única en medio de ese caos creativo.', '/biblioweb/public/assets/img/covers/roba-como-un-artista.jpg', 0, '2023-06-16 19:15:57'),
(54, 7, 50, 'Deep Work', 2016, 304, 'Inglés', 'Inglés', 'The ability to do deep work. Cal Newport\'s exciting new book is an introduction and guide to the kind of intense concentration in a distraction-free environment that results in fast, powerful learning and performance. Think of it as calisthenics for your mind-and start your exercise program today', 5, 'Deep work is the ability to focus without distraction on a cognitively demanding task. In a world filled with interruptions and attention fragmentation, mastering deep work has become more valuable than ever. It\'s the key to producing high-value results and achieving success in an increasingly competitive world.', '/biblioweb/public/assets/img/covers/deep-work.jpg', 0, '2023-06-16 19:15:57'),
(55, 7, 51, 'Originales', 2016, 352, 'Español', 'Inglés', '¿Cómo generar nuevas ideas sin temer romper con lo establecido? ¿De qué forma defender iniciativas que van en contra de la corriente, oponerse a la conformidad y a la tradición? A partir de casos concretos, Adam Grant explora qué ocurrió detrás de situaciones realmente disruptivas que cambiaron en algo el curso de un proyecto, una empresa o una cultura entera. Nos enseña cómo reconocer una idea buena y, ante todo, la persistencia que se necesita para convertirla en realidad cuando se trata de algo que contraviene lo aceptado por la mayoría.', 5, 'Los originales son aquellos que desafían el statu quo y generan ideas frescas. No temen al rechazo y persisten a pesar de la adversidad. La clave para ser un original radica en tomar riesgos calculados, buscar múltiples perspectivas y mantener una mentalidad abierta. Son aquellos que cambian el mundo con sus ideas y acciones audaces.', '/biblioweb/public/assets/img/covers/originales.jpg', 0, '2023-06-16 19:15:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `nombre_usuario` varchar(30) NOT NULL,
  `contrasenia` varchar(64) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `correo`, `nombre_usuario`, `contrasenia`, `rol`) VALUES
(1, 'correo@correo.com', 'monki', '8c6afadaee03c4046147f88c717f3da2e19a4b01bc3c01d9e9d937ae9d8e285e', 'admin'),
(9, 'correo@user.com', 'nuevoUser', 'cd687e9b82c4b4e1e4042b54e48896061ae188ab8c4b1fe43160c75d48769c1a', 'usuario'),
(13, 'correo@correo.com', 'myuser', '806877446fbb574f14cac20287ed3f9ff360ceb46725bed608cea9ab036759ba', 'usuario'),
(14, 'admin@admin.com', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'admin'),
(15, 'admin@sys.com', 'sysadmin', 'd577adc54e95f42f15de2e7c134669888b7d6fb74df97bd62cb4f5b73c281db4', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`),
  ADD UNIQUE KEY `XPKautor` (`id_autor`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `XPKgenero` (`id_genero`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`,`id_genero`,`id_autor`),
  ADD UNIQUE KEY `XPKlibro` (`id_libro`,`id_genero`,`id_autor`),
  ADD KEY `XIF1libro` (`id_genero`),
  ADD KEY `XIF2libro` (`id_autor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `XPKusuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `R_4` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `R_5` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
