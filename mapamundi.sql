-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/08/2024 às 16:08
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mapamundi`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `paises`
--

CREATE TABLE `paises` (
  `nome` varchar(100) NOT NULL,
  `capital` varchar(100) NOT NULL,
  `populacao` varchar(255) NOT NULL,
  `politica` varchar(100) NOT NULL,
  `idh` varchar(255) NOT NULL,
  `presidente` varchar(100) NOT NULL,
  `idioma` varchar(100) NOT NULL,
  `pib` varchar(255) NOT NULL,
  `moeda` varchar(100) NOT NULL,
  `territorio` varchar(255) NOT NULL,
  `bandeira` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paises`
--

INSERT INTO `paises` (`nome`, `capital`, `populacao`, `politica`, `idh`, `presidente`, `idioma`, `pib`, `moeda`, `territorio`, `bandeira`) VALUES
('Albânia', 'Tirana', '2,8 milhões', 'Capitalista', '0.795', 'Bajram Begaj', 'Albanês', '$15,28 bilhões', 'Lek albanês (ALL)', '28.748 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/albania.jpg'),
('Alemanha', 'Berlim', '83 milhões', 'Capitalista', '0.947', 'Frank-Walter Steinmeier', 'Alemão', '$4,5 trilhões', 'Euro (EUR)', '357.386 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/alemanha.jpg'),
('Andorra', 'Andorra a Velha', '77 mil', 'Capitalista', '0.858', 'Xavier Espot Zamora', 'Catalão', '$3,15 bilhões', 'Euro (EUR)', '467,63 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/andorra.jpg'),
('Anguilla', 'Vale', '15094', 'Monarquia Parlamentarista, Território Dependente', '0.865', 'Carlos III', 'Inglês', '32000000', 'Dólar do Caribe Oriental', '91', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT74EGH8CfN2ufMxxvSyQHTqVjBVFS3214M2n1rcqcBX4OE1H3nkiVq651_l2kc&s=10'),
('Antígua e Barbuda', 'Saint John', '93763', 'Parlamentarismo, Monarquia Constitucional Federal', '0.798', 'Rei Charles', 'Inglês', '1868000000', 'Dólar do Caribe Oriental', '440', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6YzTzvVFm25tDCuJgFsXxbQ8uYVNoF1d_dgzsq2OpWJzux69VEiF_BPTTUA&s'),
('Argentina', 'Buenos Aires', '46230000', 'República federal presidencialista', '0.849', 'Javier Milei', 'Espanhol', '631100000000', 'Peso argentino', '2780000', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fmundoeducacao.uol.com.br%2Fgeografia%2Fbandeira-da-argentina.htm&psig=AOvVaw3RIP_gzjDcPhqn-RxFPKUh&ust=1718850857700000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMC13MrQ5oYDFQAAAAAdAAAAABAV'),
('Austrália', 'Camberra', '27195000', 'Monarquia constitucional parlamentarista', '0.951', 'Rei Carlos III', 'Inglês', '1610000000000', 'Dólar australiano', '7600000', 'https://s3.static.brasilescola.uol.com.br/be/2022/01/bandeira-da-australia.jpg'),
('Áustria', 'Viena', '8,9 milhões', 'Capitalista', '0.922', 'Alexander Van der Bellen', 'Alemão', '$480,4 bilhões', 'Euro (EUR)', '83.879 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/austria.jpg'),
('Bahamas', 'Nassau', '417456', 'Estado unitário, Parlamentarismo, Monarquia parlamentarista', '0.784', 'Chet Neymour', 'Inglês', '12900000000', 'Dólar bahamense', '13940', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Flag_of_the_Bahamas.svg/800px-Flag_of_the_Bahamas.svg.png'),
('Barbados', 'Bridgetown', '281635', 'República Parlamentarista', '0.788', 'Sandra Mason', 'Inglês', '5700000000', 'Dólar barbadense', '430', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Flag_of_Barbados.svg/125px-Flag_of_Barbados.svg.png'),
('Bélgica', 'Bruxelas', '11,5 milhões', 'Capitalista', '0.919', 'Alexander De Croo', 'Neerlandês', '$593,9 bilhões', 'Euro (EUR)', '30.689 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/belgica.jpg'),
('Belize', 'Belmopã', '405272', 'Democracia Parlamentar', '0.694', 'Charles III', 'Inglês', '2831000000', 'Dólar belizenho', '22966', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Flag_of_Belize.svg'),
('Bielorússia', 'Minsk', '9,4 milhões', 'Economia mista', '0.808', 'Alexander Lukashenko', 'Bielorrusso', '$80,9 bilhões', 'Rublo bielorrusso (BYN)', '207.600 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/bielorrussia.jpg'),
('Bolívia', 'Sucre', '12220000', 'República presidencialista unitária', '0.703', 'Luis Arce', 'Espanhol', '44010000000', 'Boliviano', '1099000', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FFicheiro%3AFlag_of_Bolivia_%2528state%2529.svg&psig=AOvVaw2AjE0Kru7gs7VZW0XjOH1n&ust=1718849524844000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKjRqczL5oYDFQAAAAAdAAAAABAE'),
('Bósnia e Herzegovina', 'Saravejo', '3,2 milhões', 'Capitalista', '0.780', 'Željka Cvijanović', 'Bósnio', '$23,1 bilhões', 'Marco conversível da Bósnia (BAM)', '51.197 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/bosniaherzegovina.jpg'),
('Brasil', 'Brasília', '211000000', 'República federativa presidencialista', '0.760', 'Luiz Inácio Lula da Silva', 'Português', '1920000000000', 'Real', '8510000', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbrasilescola.uol.com.br%2Fbrasil%2Fbandeiradobrasil.htm&psig=AOvVaw1jNBCcmxZCRjncQPcrGmyn&ust=1718849393100000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKCA943L5oYDFQAAAAAdAAAAABAE'),
('Bulgária', 'Sofia', '6,9 milhões', 'Capitalista', '0.795', 'Rumen Radev', 'Búlgaro', '$83,9 bilhões', 'Lev búlgaro (BGN)', '110.994 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/bulgaria.jpg'),
('Canadá', 'Ottawa', '38930000', 'República Federal Presidencialista', '0.888', 'Justin Trudeau', 'Francês, Inglês', '2138000000000', 'dólar canadense', '9985000', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/125px-Flag_of_Canada_%28Pantone%29.svg.png'),
('Chile', 'Santiago', '19600000', 'República unitária presidencialista', '0.855', 'Gabriel Boric', 'Espanhol', '301000000000', 'Peso chileno', '756626', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.todamateria.com.br%2Fbandeira-do-chile%2F&psig=AOvVaw2J8pyNwEGYq7emU50ZjXj7&ust=1718849462193000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIiltK7L5oYDFQAAAAAdAAAAABAE'),
('Chipre', 'Nicósia', '1,19 milhão', 'Capitalista', '0.856', 'Nicos Anastasiades', 'Grego', 'US$ 21,88 bilhões', 'Euro (EUR)', '9.251 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/chipre.jpg'),
('Colômbia', 'Bogotá', '51870000', 'República presidencialista unitária', '0.767', 'Gustavo Petro', 'Espanhol', '343600000000', 'Peso colombiano', '1142000', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FBandeira_da_Col%25C3%25B4mbia&psig=AOvVaw2gjdQzAR6RkXy-nDrCYyoP&ust=1718849448691000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNj42ajL5oYDFQAAAAAdAAAAABAE'),
('Costa Rica', 'San José', '5181000', 'Presidencialista unitário', '0.809', 'Rodrigo Chaves', 'Espanhol', '69240000000', 'Colón costarriquenho', '51100', 'https://upload.wikimedia.org/wikipedia/commons/f/f2/Flag_of_Costa_Rica.svg'),
('Croácia', 'Zagreb', '4,15 milhão', 'Capitalista', '0.838', 'Zoran Milanović', 'Croata', 'US$ 66,08 bilhões', 'Kuna Croata', '56.594 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/croacia.jpg'),
('Cuba', 'Havana', '11210000', 'República, Estado unitário, Presidencialismo, Estado socialista, Semipresidencialismo', '0.863', 'Miguel Díaz-Canel', 'Espanhol', '633400000000', 'Peso cubano', '109884', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Flag_of_Cuba.svg/800px-Flag_of_Cuba.svg.png'),
('Dinamarca', 'Copenhague', '5,85 milhão', 'Capitalista', '0.930', 'Mette Frederiksen', 'Dinamarquês', 'US$ 357,9 bilhões', 'Coroa Dinamarquesa', '43.098 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/dinamarca.jpg'),
('Dominica', 'Roseau', '72737', 'República Parlamentarista', '0.776', 'Luis Abinader', 'Inglês', '607400000', 'Dólar do Caribe Oriental', '754', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Flag_of_Dominica.svg/1200px-Flag_of_Dominica.svg.png'),
('El Salvador', 'São Salvador', '6336000', 'Presidencialismo, República constitucional', '0.659', 'Nayib Bukele', 'Espanhol', '32490000000', 'Dólar americano, Bitcoin', '21040', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Flag_of_El_Salvador.svg/800px-Flag_of_El_Salvador.svg.png'),
('Equador', 'Quito', '18000000', 'República presidencialista', '0.740', 'Daniel Noboa', 'Espanhol', '11500000000', 'Dólar americano', '283561', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FBandeira_do_Equador&psig=AOvVaw21g-eAUPtXTfvuPfu5X3-u&ust=1718849508024000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOC5p8TL5oYDFQAAAAAdAAAAABAI'),
('Escócia', 'Edimburgo', '5,5 milhões', 'Capitalista', '0.932', 'Rishi Sunak', 'Escocês gaélico', '$205 bilhões', 'Libra esterlina (GBP)', '77.910 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/escocia.jpg'),
('Eslováquia', 'Bratislava', '5,46 milhão', 'Capitalista', '0.844', 'Zuzana Čaputová', 'Eslovaco', 'US$ 110,01 bilhões', 'Euro (EUR)', '49.035 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/eslovaquia.jpg'),
('Eslovênia', 'Liubliana', '2,07 milhão', 'Capitalista', '0.892', 'Robert Golob', 'Esloveno', 'US$ 25,42 bilhões', 'Euro (EUR)', '20.273 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/eslovenia.jpg'),
('Espanha', 'Madri', '46,75 milhão', 'Capitalista', '0.923', 'Pedro Sánchez', 'Espanhol', 'US$ 1.311 trilhão', 'Euro (EUR)', '505.992 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/espanha.jpg'),
('Estados Unidos', 'Washington, D.C', '333300000', 'Federação, Presidencialismo, República federal, República constitucional', '0.944', 'Joe Biden', 'inglês', '25440000000000', 'Dólar Americano', '9834000', 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Flag_of_the_United_States.svg'),
('Estônia', 'Tallinn', '1,33 milhão', 'Capitalista', '0.867', 'Kaja Kallas', 'Estoniano', 'US$ 31,82 bilhões', 'Euro (EUR)', '43.297 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/estonia.jpg'),
('Federação dos Estados da Micronésia', 'Palikir', '112600', 'República democrática presidencialista', '0.62', 'Wesley Simina', 'Inglês', '367000000', 'Dólar americano', '702000', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqnZgH3m_5omFNmFo7fc8GA1SjCSZo6nkQ1g&s'),
('Fiji', 'Suva', '926200', 'República parlamentarista', '0.73', 'Wiliame Katonivere', 'Inglês, fijiano e híndi fijiano', '3000000000', 'Dólar Fijiano', '18300000', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKkLgEEi0gyYyeAWYY_Wa7Wdo_42KB5nGAVg&s'),
('Finlândia', 'Helsinki', '5,52 milhão', 'Capitalista', '0.890', 'Sanna Marin', 'Finlandês', 'US$ 331,6 bilhões', 'Euro (EUR)', '338.424 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/finlandia.jpg'),
('França', 'Paris', '65,72 milhão', 'Capitalista', '0.901', 'Emmanuel Macron', 'Francês', 'US$ 2.922 trilhões', 'Euro (EUR)', '551.695 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/franca.jpg'),
('Geórgia', 'Tiblissi', '3,72 milhões', 'semipresidencialista', '0.784', 'Salome Zurabishvili', 'Georgiano', 'US$ 16,61 bilhões', 'Lari Georgiano (GEL)', '69.700 km²', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_Georgia.svg/188px-Flag_of_Georgia.svg.png'),
('Granada', 'Saint Georges', '125438', 'Parlamentarismo, Monarquia Parlamentarista', '0.779', 'Charles III', 'Inglês', '1215000000', 'Dólar do Caribe Oriental', '344', 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Grenada.svg'),
('Grécia', 'Atenas', '10,5 milhões', 'Capitalista', '0.888', 'Katerina Sakellaropoulou', 'Grego', '$209 bilhões', 'Euro (EUR)', '131.957 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/grecia.jpg'),
('Groelândia', 'Nuuk', '56661', 'monárquico parlamentarista', '0.786', 'Rainha Margrethe II', 'Groenlandês', '3236000000', 'Coroa dinamarquesa', '2166000', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxaDua5uq1ABh-2eZN2vhMAIkYBRtN0RU27hBlzA3MFTHfXhFCtv2h8equJQk&s=10'),
('Guadalupe', 'Basse Terre', '409152', 'Estado Unitário, Semipresidencialismo', '0.681', 'Emmanuel Macron', 'Francês', '8110000000', 'Euro (EUR)', '1628', 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Unofficial_flag_of_Guadeloupe_%28local%29.svg'),
('Guatemala', 'Cidade da Guatemala', '17360000', 'Estado unitário, Presidencialismo, República constitucional', '0.56', 'Bernardo Arévalo', 'Espanhol', '95000000000', 'Quetzal guatemalteco', '108890', 'https://upload.wikimedia.org/wikipedia/commons/e/ec/Flag_of_Guatemala.svg'),
('Guiana', 'Georgetown', '808726', 'República presidencialista', '0.611', 'Irfaan Ali', 'Inglês', '14720000000', 'Dólar guianense', '214969', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FBandeira_da_Guiana&psig=AOvVaw0tTkVy3Eg5ZN8zQf_5W__y&ust=1718849491425000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMDHsLzL5oYDFQAAAAAdAAAAABAE'),
('Guiana Francesa', 'Caiena', '301099', 'Região e departamento ultramarino da República Francesa', '0.794', 'Emmanuel Macron', 'Francês', '15360000000', 'Euro', '84000', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gettyimages.com.br%2Ffotos%2Fflag-of-french-guiana&psig=AOvVaw1ELOuq8DlCt9UbrVTsNfKO&ust=1718849701249000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC9xaDM5oYDFQAAAAAdAAAAABAE'),
('Haiti', 'Porto Príncipe', '11580000', 'República, Estado unitário, Semipresidencialismo', '0.51', 'Ariel Henry', 'Crioulo Haitiano, francês', '20250000000', 'Gourde haitiano', '27750', 'https://upload.wikimedia.org/wikipedia/commons/5/56/Flag_of_Haiti.svg'),
('Honduras', 'Tegucigalpa', '10430000', 'Estado unitário, Presidencialismo, República constitucional', '0.632', 'Xiomara Castro', 'Espanhol', '31720000000', 'Lempira hondurenha', '112492', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Flag_of_Honduras.svg/800px-Flag_of_Honduras.svg.png'),
('Hungria', 'Budapeste', '9,6 milhões', 'Capitalista', '0.854', 'Katalin Novák', 'Húngaro', '$199 bilhões', 'Forint (HUF)', '93.030 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/hungria.jpg'),
('Ilha de São Martinho', 'Marigot', '31791', 'República Francesa', '0.901', 'Emmanuel Macron', 'Francês', '2779000000', 'Euro', '53.2', 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Flag_of_Saint_Barth%C3%A9lemy_%28local%29.svg'),
('Ilhas Cayman', 'George Town', '68706', 'Parlamentarismo, Democracia Representativa, Monarquia Parlamentarista', '', 'Duncan Taylor', 'Inglês', '6845000000', 'Dólar das Ilhas Cayman', '259', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_the_Cayman_Islands.svg/800px-Flag_of_the_Cayman_Islands.svg.png'),
('Ilhas Marshall', 'Dalap-Uliga-Darrit (Atol de Marujo)', '58400', 'República parlamentarista', '0.731', 'Hilda Heine', 'Marshalês e inglês', '153000000', 'Dólar americano', '181000', 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Flag_of_the_Marshall_Islands.svg'),
('Ilhas Salomão', 'Honiara', '720900', 'Monarquia constitucional parlamentarista', '0.564', 'Rei Carlos III', 'Inglês', '658000000', 'Dólar das Ilhas Salomão', '28900000', 'https://upload.wikimedia.org/wikipedia/commons/7/74/Flag_of_the_Solomon_Islands.svg'),
('Ilhas Turks e Caicos', 'Grand Turk', '45703', 'Monarquia', '0.93', 'Rei Carlos III', 'Inglês', '1139000000', 'Dólar americano (USD)', '616', 'https://upload.wikimedia.org/wikipedia/commons/a/a0/Flag_of_the_Turks_and_Caicos_Islands.svg'),
('Ilhas Virgens Americanas', 'Charlotte Amalie', '105413', 'Federação, Presidencialismo, República Federal, República Constitucional', '0.944', 'Joe Biden', 'Inglês', '4444000000', 'Dólar americano', '346.4', 'https://upload.wikimedia.org/wikipedia/commons/f/f8/Flag_of_the_United_States_Virgin_Islands.svg'),
('Ilhas Virgens Britânicas', 'Road Town', '31305', 'Monarquia Constitucional', '0.944', 'Carlos III', 'Inglês', '500000000', 'Dólar americano', '153', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Flag_of_the_British_Virgin_Islands.svg/125px-Flag_of_the_British_Virgin_Islands.svg.png'),
('Indonésia', 'Jacarta', '279100000', 'República presidencialista', '0.6', 'Joko Widodo', 'Indonésio', '4400000000000', 'Rupia Indonésia', '1900000', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV_NhyLx7o3OpR7dNcqic5TPq98KiYwphPpQ&s'),
('Inglaterra', 'Londres', '56 milhões', 'Capitalista', '0.932', 'Rishi Sunak', 'Inglês', '$3,2 trilhões', 'Libra esterlina (GBP)', '130.279 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/inglaterra.jpg'),
('Irlanda', 'Dublin', '5,2 milhões', 'Capitalista', '0.955', 'Michael D. Higgins', 'Irlandês', '$559 bilhões', 'Euro (EUR)', '70.273 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/irlanda.jpg'),
('Irlanda do Norte', 'Belfast', '1,9 milhões', 'Capitalista', '0.932', 'Rishi Sunak', 'Inglês', '$55 bilhões', 'Libra esterlina (GBP)', '14.130 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/irlandadonorte.jpg'),
('Islândia', 'Reykjavik', '376 mil', 'Capitalista', '0.959', 'Guðni Th. Jóhannesson', 'Islandês', '$32 bilhões', 'Coroa islandesa (ISK)', '103.000 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/islandia.jpg'),
('Itália', 'Roma', '59 milhões', 'Capitalista', '0.895', 'Sergio Mattarella', 'Italiano', '$2,2 trilhões', 'Euro (EUR)', '301.340 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/italia.jpg'),
('Jamaica', 'Kingston', '2827000', 'democracia parlamentar e monarquia constitucional', '0.688', 'Patrick Allen', 'Inglês', '17100000000', 'Dólar jamaicano', '10991', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Jamaica.svg/125px-Flag_of_Jamaica.svg.png'),
('Kiribati', 'Baikiri', '119400', 'República presidencialista', '0.624', 'Taneti Maamau', 'Inglês e gilbernês', '130000000', 'Dólar de Kiribati e Dólar Australiano', '726000', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Kiribati.svg/1200px-Flag_of_Kiribati.svg.png'),
('Letônia', 'Riga', '1,8 milhões', 'Capitalista', '0.866', 'Edgars Rinkēvičs', 'Letão', '$44 bilhões', 'Euro (EUR)', '64.589 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/letonia.jpg'),
('Liechtenstein', 'Vaduz', '39 mil', 'Capitalista', '0.961', 'Alois von und zu Liechtenstein', 'Alemão', '$6,5 bilhões', 'Franco suíço (CHF)', '160 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/liechtenstein.jpg'),
('Lituânia', 'Vilnius', '2,6 milhões', 'Capitalista', '0.882', 'Gitanas Nausėda', 'Lituano', '$68 bilhões', 'Euro (EUR)', '65.300 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/lituania.jpg'),
('Luxemburgo', 'Luxemburgo', '634,814', 'Capitalista', '0.916', 'Henri, Grão-Duque de Luxemburgo', 'Luxemburguês', '$72,383 bilhões', 'Euro (EUR)', '2.586 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/luxemburgo.jpg'),
('Macedônia do Norte', 'Skopje', '2,083,374', 'Capitalista', '0.78', 'Stevo Pendarovski', 'Macedônio', '$6,260 bilhões', 'Dinar macedônio (MKD)', '25.713 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/macedonia.jpg'),
('Malta', 'Valletta', '514,564', 'Capitalista', '0.895', 'George Vella', 'Maltês', '$35,065 bilhões', 'Euro (EUR)', '316 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/malta.jpg'),
('Martinica', 'Fort-de-France', '376891', 'Estado Unitário, República Constitucional, Semipresidencialismo', '0.863', 'Emmanuel Macron', 'Francês', '6117000000', 'Euro', '1128', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Flag-of-Martinique.svg/125px-Flag-of-Martinique.svg.png'),
('México', 'Cidade do México', '127500000', 'Presidencialismo, República federal', '0.779', 'Andrés Manuel López Obrador', 'Espanhol', '1466000000000', 'Peso Mexicano', '1973000', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/125px-Flag_of_Mexico.svg.png'),
('Moldávia', 'Chisinau', '2,640,438', 'Capitalista', '0.741', 'Maia Sandu', 'Romeno', '$3,692 bilhões', 'Leu moldávio (MDL)', '33.846 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/moldavia.jpg'),
('Mônaco', 'Mônaco', '38,300', 'Capitalista', '0.96', 'Príncipe Albert II', 'Francês', '$7,165 bilhões', 'Euro (EUR)', '2.02 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/monaco.jpg'),
('Montenegro', 'Podgorica', '622,359', 'Capitalista', '0.814', 'Milo Đukanović', 'Montenegrino', '$5,817 bilhões', 'Euro (EUR)', '13.812 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/montenegro.jpg'),
('Montserrat', 'Plymouth, Brades', '4992', 'Monarquia Parlamentarista, Território Dependente', '0.958', 'Carlos III', 'Inglês', '43780000', 'Dólar do Caribe Oriental', '102', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwM1rVf7GjySStGnJPg4ajXNzcPInSoolgQEs-rMQXh-0WcAxIYjGQJOeO8w&s'),
('Nauru', 'Yaren', '10600', 'República parlamentarista', '0.696', 'David Adeang', 'Nauruano e inglês', '60000', 'Dólar australiano', '21000', 'https://img.freepik.com/vetores-premium/bandeira-de-nauru_628407-644.jpg?w=900'),
('Nicarágua', 'Manágua', '6948000', 'República, Estado unitário, Presidencialismo', '0.667', 'Daniel Ortega', 'Espanhol', '15670000000', 'Córdoba nicaraguense', '130373', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Nicaragua.svg/800px-Flag_of_Nicaragua.svg.png'),
('Noruega', 'Oslo', '5,432,580', 'Capitalista', '0.953', 'Harald V', 'Norueguês', '$398.854 bilhões', 'Coroa norueguesa (NOK)', '385,207 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/noruega.jpg'),
('Nova Zelândia', 'Wellington', '5300000', 'Monarquia constitucional parlamentarista', '0.937', 'Rei Carlos III', 'Inglês, Maori', '279200000000', 'Dólar da Nova Zelândia', '2680000', 'https://img.freepik.com/vetores-gratis/ilustracao-da-bandeira-da-nova-zelandia_53876-27119.jpg?t=st=1723642255~exp=1723645855~hmac=4368722d4744b0af289aa9de0f99b1b7cb7d8de19cf920805bd67e923dda335a&w=1060'),
('País de Gales', 'Cadiff', '3,1 milhões', 'Capitalista', '0.932', 'Rishi Sunak', 'Galês', '$90 bilhões', 'Libra esterlina (GBP)', '20.761 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/paisdegales.jpg'),
('Países Baixos', 'Amsterdã', '17,5 milhões', 'Capitalista', '0.944', 'Rei Willem-Alexander', 'Holandês', 'US$ 1,0 trilhão', 'Euro (EUR)', '41.543 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/holanda.jpg'),
('Palau', 'Melekeok', '20800', 'República presidencialista', '0.797', 'Surangel Whipps Jr.', 'Inglês, palauano, japonês, tobiado e sonsorolês', '182000000', 'Dólar americano', '458', 'https://upload.wikimedia.org/wikipedia/commons/4/48/Flag_of_Palau.svg'),
('Panamá', 'Cidade do Panamá', '4409000', 'República, Presidencialismo, Estado unitário democrático republica constitucional', '0.755', 'José Raúl Mulino', 'Espanhol', '76520000000', 'Dólar americano, Balboa panamenho', '75517', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Flag_of_Panama.svg/125px-Flag_of_Panama.svg.png'),
('Papua Nova Guiné', 'Port Moresby', '11700000', 'Monarquia constitucional parlamentarista', '0.558', 'Rei Carlos III', 'Inglês, Hiri Motu e Tok Pisin', '8200000000', 'Kina', '462000000', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Flag_of_Papua_New_Guinea.svg/227px-Flag_of_Papua_New_Guinea.svg.png'),
('Paraguai', 'Assunção', '6781000', 'República unitária presidencialista de partido dominante', '0.640', 'Santiago Peña', 'Espanhol', '41720000000', 'Guarani paraguaio', '406752', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fgeo5.net%2Fbandeira-do-paraguai%2F&psig=AOvVaw2xwImDuvWdT_l4b_RmU4bm&ust=1718849560414000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKjBpd3L5oYDFQAAAAAdAAAAABBE'),
('Peru', 'Lima', '34050000', 'República unitária presidencialista', '0.777', 'Dina Boluarte', 'Espanhol', '242600000000', 'Sol', '1285000', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FFicheiro%3AFlag_of_Peru_%2528state%2529.svg&psig=AOvVaw1LZLba9VKH-MkVyTGdweTy&ust=1718849425223000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOjk9JzL5oYDFQAAAAAdAAAAABAE'),
('Polônia', 'Varsóvia', '38 milhões', 'Capitalista', '0.88', 'Andrzej Duda', 'Polonês', 'US$ 656 bilhões', 'Zloty polonês (PLN)', '312.696 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/polonia.jpg'),
('Porto Rico', 'San Juan', '2878485', 'República, Democracia representativa, Presidencialismo', '0.865', 'Pedro Pierluisi', 'Espanhol, Inglês', '113400000000', 'Dólar americano', '13791', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Flag_of_Puerto_Rico.svg/800px-Flag_of_Puerto_Rico.svg.png'),
('Portugal', 'Lisboa', '10,2 milhões', 'Capitalista', '0.869', 'Marcelo Rebelo de Sousa', 'Português', 'US$ 367 bilhões', 'Euro (EUR)', '92.212 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/portugal.jpg'),
('República Dominicana', 'Santo Domingo', '11230000', 'Presidencialista unitário', '0.767', 'Luis Abinader', 'Espanhol', '113500000000', 'Peso dominicano', '48442', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Flag_of_the_Dominican_Republic.svg'),
('Romênia', 'Bucareste', '19 milhões', 'Capitalista', '0.821', 'Klaus Iohannis', 'Romeno', '$284 bilhões', 'Leu romeno (RON)', '238.397 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/romenia.jpg'),
('Samoa', 'Ápia', '176200', 'República parlamentarista', '0.707', 'Va\'aletoa Sualauvi II', 'Inglês e samoano', '523000000', 'Tala', '2000', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_Samoa.svg/1200px-Flag_of_Samoa.svg.png'),
('San Marino', 'San Marino', '34 mil', 'Capitalista', '0.853', 'Alessandro Scarano', 'Italiano', '$1,64 bilhões', 'Euro (EUR)', '61 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/sanmarino.jpg'),
('Santa Lucia', 'Castries', '179857', 'Monarquia Parlamentarista', '0.715', 'Charles III', 'Inglês', '2300000000', 'Dólar do Caribe Oriental', '617', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Saint_Lucia.svg/800px-Flag_of_Saint_Lucia.svg.png'),
('Santo Kitts e Nevis', 'Basseterre', '147657', 'Federação, Parlamentarismo, Monarquia Parlamentarista, Monarquia Constitucional Federal', '0.838', 'Timothy Harris', 'Inglês', '965600000', 'Dólar do Caribe Oriental', '261', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Saint_Kitts_and_Nevis.svg/1024px-Flag_of_Saint_Kitts_and_Nevis.svg.png'),
('São Bartolomeu', 'Gustávia', '9131', 'República Presidencialista', '0.901', 'Emmanuel Macron', 'Francês', '2779000000', 'Euro', '21', 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Flag_of_France.svg'),
('São Vicente e Granadina', 'Kingstown', '103948', 'Democracia Parlamentar e Monarquia Constitucional', '0.755', 'Charles III', 'Inglês', '948600000', 'Dólar do Caribe Oriental', '389', 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Flag_of_Saint_Vincent_and_the_Grenadines.svg'),
('Sérvia', 'Belgrado', '6,7 milhões', 'Capitalista', '0.806', 'Aleksandar Vučić', 'Sérvio', '$65 bilhões', 'Dinar sérvio (RSD)', '88.361 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/servia.jpg'),
('Sint Maarten', 'Phillipsburg', '42848', 'Monarquia Parlamentarista, Estado Unitário, Democracia Representativa', '', 'Guilherme Alexandre', 'Neerlandês, Inglês', '1537000000', 'Florim das Antilhas Holandesa', '34', 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Flag_of_Sint_Maarten.svg'),
('Suécia', 'Estocolmo', '10,4 milhões', 'Capitalista', '0.945', 'Magdalena Andersson', 'Sueco', '$635 bilhões', 'Coroa sueca (SEK)', '450.295 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/suecia.jpg'),
('Suíça', 'Berna', '8,7 milhões', 'Capitalista', '0.955', 'Alain Berset', 'Alemão', '$813 bilhões', 'Franco suíço (CHF)', '41.285 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/suica.jpg'),
('Suriname', 'Paramaribo', '618040', 'República com poder executivo vinculado ao parlamento unitária', '0.646', 'Chandrikapersad Santokhi', 'Holandês', '3621000000', 'Dólar surinamês', '176215', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FBandeira_do_Suriname&psig=AOvVaw1cUf-wyXpQ15OwI3kMqbho&ust=1718849657543000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIDQz4vM5oYDFQAAAAAdAAAAABAJ'),
('Tchéquia', 'Praga', '10,5 milhões', 'Capitalista', '0.888', 'Petr Pavel', 'Checo', '$276 bilhões', 'Coroa checa (CZK)', '78.867 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/repcheca.jpg'),
('Tonga', 'Nocualofa', '100600', 'Monarquia constitucional parlamentarista', '0.745', 'Rei Tupou VI', 'Tonganês e inglês', '801000000', 'Pa\'anga', '462000000', 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Tonga.svg'),
('Turquia', 'Ancara', '84 milhões', 'Capitalista', '0.838', 'Recep Tayyip Erdoğan', 'Turco', '$815 bilhões', 'Lira turca (TRY)', '783.562 km²', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/1200px-Flag_of_Turkey.svg.png'),
('Tuvalu', 'Funafui', '11300', 'Monarquia constitucional parlamentarista', '0.590', 'Rei Carlos III', 'Tuvaluano e inglês', '86400000', 'Dólar tuvaluano e dólar australiano', '26', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Tuvalu.svg/1200px-Flag_of_Tuvalu.svg.png'),
('Ucrânia', 'Kiev', '41 milhões', 'Capitalista', '0.773', 'Volodymyr Zelensky', 'Ucraniano', '$200 bilhões', 'Hryvnia (UAH)', '603.628 km²', 'https://www.sogeografia.com.br/figuras/bandeiras/europa/ucrania.jpg'),
('Uruguai', 'Montevidéu', '3423000', 'República presidencialista unitária', '0.830', 'Luis Alberto Lacalle Pou', 'Espanhol', '71180000000', 'Peso uruguaio', '176215', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FBandeira_do_Uruguai&psig=AOvVaw2p-k0pRyX2c2OBCF6IO1DK&ust=1718849545412000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNimlNbL5oYDFQAAAAAdAAAAABAE'),
('Vanuatu', 'Port Vila', '272400', 'República parlamentarista', '0.607', 'Nikenike Vurobaravu', 'bislamá, inglês e francês', '57400000000', 'vatu', '11000000', 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Vanuatu.svg'),
('Venezuela', 'Caracas', '28300000', 'República federal presidencialista', '0.699', 'Nicolás Maduro', 'Espanhol', '92210000000', 'Bolívar soberano', '916445', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.m.wikipedia.org%2Fwiki%2FFicheiro%3AFlag_of_Venezuela.svg&psig=AOvVaw3mcJwrfZVn0uSMvrVVvX7s&ust=1718849476182000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLjLjbXL5oYDFQAAAAAdAAAAABAE');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
