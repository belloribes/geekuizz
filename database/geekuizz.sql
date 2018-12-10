-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2018 at 09:24 AM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.1.25-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geekuizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternativas`
--

CREATE TABLE `alternativas` (
  `id` int(10) UNSIGNED NOT NULL,
  `pergunta_id` int(10) UNSIGNED NOT NULL,
  `serie_id` char(1) NOT NULL,
  `texto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alternativas`
--

INSERT INTO `alternativas` (`id`, `pergunta_id`, `serie_id`, `texto`) VALUES
(1, 1, 'A', 'Acorda cedo e come frutas cortadas metodicamente.'),
(2, 1, 'B', 'Sai da cama com o despertador e se prepara para a batalha da semana.'),
(3, 1, 'C', 'Só consegue lembrar do seu nome depois do café.'),
(4, 1, 'D', 'Levanta e faz café pra todos da casa.'),
(5, 1, 'E', 'Passa o café e conserta um erro no HTML.'),
(6, 2, 'A', 'Ela vai atrapalhar seu horário. Oculte o corpo.'),
(7, 2, 'B', 'Levanta a senhora e jura protegê-la com sua vida.'),
(8, 2, 'C', 'Ajuda-a, mas questiona sua real identidade.'),
(9, 2, 'D', 'Oferece para caminharem juntos até um destino em comum.'),
(10, 2, 'E', 'Testa se ela roda bem no Firefox. Não roda.'),
(11, 3, 'A', 'Convence parte das pessoas a esperarem o próximo.'),
(12, 3, 'B', 'Ignora as pessoas no elevador e entra de qualquer forma.'),
(13, 3, 'C', 'Você questiona a realidade, as coisas e tudo mais. Sobe de escada.'),
(14, 3, 'D', 'Com uma leve intimidação passivo-agressiva, encontra um lugar no elevador.'),
(15, 3, 'E', 'Cria um app que mostra a lotação do elevador. Vende o app e fica milionário.'),
(16, 4, 'A', 'Fala sobre a política, eleições, como tudo é um absurdo.'),
(17, 4, 'B', 'Larga uma frase polêmica e vê uma pequena guerra se formar.'),
(18, 4, 'C', 'Puxa um assunto e te lembram que já foi discutido semana passada.'),
(19, 4, 'D', 'Sugere que os colegas trabalhem na ideia de um novo projeto.'),
(20, 4, 'E', 'Desabafa sobre como odeia PHP. Todo mundo na sala adora PHP.'),
(21, 5, 'A', 'Vou chamar aqui o meu Uber.'),
(22, 5, 'B', 'Pegarei o bus junto com o resto do povo.'),
(23, 5, 'C', 'No ponto de ônibus mais uma vez, espero não errar a linha de novo.'),
(24, 5, 'D', 'Vou de carro, mas ofereço uma carona para os colegas.'),
(25, 5, 'E', 'Acho que descobri uma forma de fazer aquela senhora rodar no Firefox.');

-- --------------------------------------------------------

--
-- Table structure for table `perguntas`
--

CREATE TABLE `perguntas` (
  `id` int(10) UNSIGNED NOT NULL,
  `pergunta` varchar(200) DEFAULT NULL,
  `score` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perguntas`
--

INSERT INTO `perguntas` (`id`, `pergunta`, `score`) VALUES
(1, 'De manhã, você:', 6),
(2, 'Indo para o trabalho você encontra uma senhora idosa caída na rua.', 10),
(3, 'Chega no prédio e o elevador está cheio.', 18),
(4, 'Você chega no trabalho e as convenções sociais te obrigam a puxar assunto.', 25),
(5, 'A pauta pegou o dia todo, mas você está indo para casa.', 41);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` char(1) NOT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table1';

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `nome`, `msg`, `img`) VALUES
('A', 'House of Cards', 'Você é House of Cards: ataca o problema com método e faz de tudo para resolver a situação.', 'house_of_cards.jpg'),
('B', 'Game of Thrones', 'Você é Game of Thrones: não tem muita delicadeza nas ações, mas resolve o problema de forma prática.', 'game_of_thrones.jpg'),
('C', 'Lost', 'Você é Lost: faz as coisas sem ter total certeza se é o caminho certo ou se faz sentido, mas no final dá tudo certo.', 'lost.jpg'),
('D', 'Breaking Bad', 'Você é Breaking Bad: pra fazer acontecer você toma a liderança, mas sempre contando com seus parceiros.', 'breaking_bad.jpg'),
('E', 'Silicon Valley', 'Você é Silicon Valley: vive a tecnologia o tempo todo e faz disso um mantra para cada situação no dia.', 'silicon_valley.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternativas`
--
ALTER TABLE `alternativas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_alternativas_perguntas_idx` (`pergunta_id`),
  ADD KEY `fk_alternativas_series1_idx` (`serie_id`);

--
-- Indexes for table `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternativas`
--
ALTER TABLE `alternativas`
  ADD CONSTRAINT `fk_alternativas_perguntas` FOREIGN KEY (`pergunta_id`) REFERENCES `perguntas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alternativas_series1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
