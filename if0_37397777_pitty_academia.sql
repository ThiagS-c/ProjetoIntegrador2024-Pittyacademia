-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql109.infinityfree.com
-- Tempo de geração: 13/11/2024 às 12:22
-- Versão do servidor: 10.6.19-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_37397777_pitty_academia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `nivel` varchar(255) NOT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `login` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `sobrenome`, `sexo`, `nivel`, `observacoes`, `login`, `senha`) VALUES
(1, 'thiago', 'silva', 'masclu', 'instrutor', 'testeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeesssssssssssssshhhhhhhhh', 'thiago', '123456'),
(999, 'pitty', 'academia', NULL, 'instrutor', 'administrador', 'pitty', 'Pitty@2024'),
(1009, 'Josy', 'Novais', 'feminino', 'iniciante ', '', 'josy', 'josy@2024'),
(1012, 'ALEX', 'SILVA', 'MASC', 'iniciante ', '', 'alex', 'alex'),
(1013, 'Zenaide', 'oliveira', 'feminino', 'iniciante ', '', 'zenaide', 'zenaide'),
(1014, 'Arnaldo', 'Andrade', 'Masculino', 'Iniciante', '', 'Arnaldo', '54321'),
(1015, 'Robson', 'Nascimento ', 'M', 'Básico ', 'Exercícios leves, artrose em joelhos', '@RobsonNascimento', 'Mudar@123'),
(1016, 'Ana', 'Santos', 'Feminino', '1', '', 'Ana@', 'ana1234'),
(1017, 'Wellgton ', 'Ferreira', 'Masculino ', 'Iniciante', '', 'wellgton', '123456'),
(1019, 'Samuel', 'Coelho Santana', 'Masculino', 'Intermediário ', 'Aluno com 20% de BF, com conhecimento básico em musculação', 'Samuel Coelho', 'Free312130!'),
(1021, 'Jonatha', 'Souza', 'Masculino', '1', '', 'jonathasouza', '123456'),
(1022, 'Thamires', 'de Lima Souza', 'Feminino', 'Iniciante', '', 'Thamires', '030411'),
(1023, 'Lincoln', 'Moura', 'Masculino', 'Avançado', '', 'lincoln', 'Lincoln@232630'),
(1024, 'Ricardo', 'Gabriel', 'Masculino', 'Intermediário', '', 'ricardo', 'Allan3144'),
(1026, 'Carlos ', 'Santiago', 'Masculino ', 'Intermediário ', '', 'Carloss', '656403');

-- --------------------------------------------------------

--
-- Estrutura para tabela `aulas_grupo`
--

CREATE TABLE `aulas_grupo` (
  `id_aula_grup` int(11) NOT NULL,
  `nome_aula` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aulas_grupo`
--

INSERT INTO `aulas_grupo` (`id_aula_grup`, `nome_aula`) VALUES
(2, 'JUMP'),
(3, 'FUNCIONAL'),
(4, 'FITDANCE'),
(5, 'BOXE'),
(17, 'CAPOEIRA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `categoria`) VALUES
(2, 'Abdome'),
(5, 'Antebraco'),
(6, 'Aquecimento'),
(8, 'Biceps'),
(3, 'Costa'),
(1, 'Deltoides'),
(7, 'Peitoral'),
(9, 'Perna'),
(4, 'Triceps');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicios`
--

CREATE TABLE `exercicios` (
  `id_exercicio` int(11) NOT NULL,
  `nome_exercicio` varchar(200) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `exercicios`
--

INSERT INTO `exercicios` (`id_exercicio`, `nome_exercicio`, `id_categoria`) VALUES
(1, 'supino inclinado', 7),
(2, 'supino descl', 7),
(3, 'pec-deck', 7),
(4, 'crucifixo', 7),
(5, 'dubeel press', 7),
(6, 'pull over', 7),
(7, 'sup.vert', 7),
(8, 'fly', 7),
(9, 'flexão', 7),
(10, 'rosca direta', 8),
(11, 'rosca scott', 8),
(12, 'rosca alternada', 8),
(13, 'rosca simultania', 8),
(14, 'rotação lateral', 8),
(15, 'rosca concentrada', 8),
(16, 'rosca/cabo', 8),
(17, 'R.al.maquina', 8),
(18, 'r.martelo', 8),
(19, 'agachamento', 9),
(20, 'leg-press', 9),
(21, 'extensão', 9),
(22, 'flexão-hotiz', 9),
(23, 'stiff', 9),
(24, 'adução', 9),
(25, 'abdução', 9),
(26, 'avanço', 9),
(27, 'gluteos', 9),
(28, 'gemeos', 9),
(29, 'em pé', 9),
(30, 'sentado', 9),
(31, 'testa', 4),
(32, 'pulley', 4),
(33, 'francês', 4),
(34, 'megulho', 4),
(35, 'pulley-unilater', 4),
(36, 'pul.maquina', 4),
(37, 'coice', 4),
(38, 'Polia invertida', 4),
(39, 'p.corda', 4),
(40, 'rosca inversa', 5),
(41, 'contra.a.braço', 5),
(42, 'rosca punho', 5),
(43, 'cabo elevado', 5),
(44, 'thors hammer', 5),
(45, 'bicicleta', 6),
(46, 'eliptico', 6),
(47, 'esteira', 6),
(48, 'jump', 6),
(49, 'desenv.barra', 1),
(50, 'desenv.maq', 1),
(51, 'elev.lateral', 1),
(52, 'elev.frontal', 1),
(53, 'remada alta', 1),
(54, 'delt.post', 1),
(55, 'crucifixo invert', 1),
(56, 'encolhimento', 1),
(57, 'mangu', 1),
(58, 'elevação maq.', 1),
(59, 'arnold', 1),
(60, 'elev.perna', 2),
(61, 'obliquio alter', 2),
(62, 'elevação four', 2),
(63, 'abd.maquina', 2),
(64, 'prancha', 2),
(65, 'ab.remador ', 2),
(66, 'pulley costas', 3),
(67, 'pulley frente', 3),
(68, 'tem.sentado', 3),
(69, 'rem.pulley', 3),
(70, 'hiperextenção', 3),
(71, 'dosais maquina', 3),
(72, 'barra fixa', 3),
(73, 'remada unilat', 3),
(74, 'gravitron', 3),
(75, 'pulldown', 3),
(76, 'r.com apoio', 3),
(77, 'r.cavalo', 3),
(78, 'reto abdome', 2),
(79, 'supino', 7),
(163, 'sumô', 9),
(164, 'Pulley Barra', 4),
(165, 'Rosca Scott Banco barra', 8),
(166, 'Agachamento Smith', 9),
(167, 'Afundo', 9),
(168, 'Barra + sumô step', 9),
(169, 'Isometria', 9),
(170, 'Pelvica', 9),
(171, 'Sentado rap.', 9),
(172, 'Pulley frente + unilateral', 3),
(173, 'Pull Down barra', 3),
(174, 'Puxador corda', 3),
(175, 'Mergulho livre', 4),
(176, 'Abdução + sumô, terra', 9),
(178, 'Dorsais Máquina', 3),
(179, 'Rema. Sentado variações', 3),
(180, 'flexões variações', 7),
(181, 'Cross Over', 7),
(182, 'Francês  banco inclinado', 4),
(183, 'Levantamento Terra', 9),
(184, 'Sentado drop', 9),
(188, 'Pelvico', 9),
(189, 'Glúteos coice', 9),
(190, 'Pull Down corda', 3),
(191, 'Remada curvada', 3),
(192, 'Rosca Livre', 8),
(193, 'Giro Russo', 2),
(194, 'Militar', 2),
(196, 'elevação lateral', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `horarios`
--

CREATE TABLE `horarios` (
  `id_horarios` int(11) NOT NULL,
  `id_aula_grup` int(11) NOT NULL,
  `hr_seg` time DEFAULT NULL,
  `hr_terca` time DEFAULT NULL,
  `hr_quarta` time DEFAULT NULL,
  `hr_quinta` time DEFAULT NULL,
  `hr_sexta` time DEFAULT NULL,
  `hr_sabado` time DEFAULT NULL,
  `hr_domingo` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `horarios`
--

INSERT INTO `horarios` (`id_horarios`, `id_aula_grup`, `hr_seg`, `hr_terca`, `hr_quarta`, `hr_quinta`, `hr_sexta`, `hr_sabado`, `hr_domingo`) VALUES
(3, 4, '00:00:00', '00:00:00', '19:30:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(4, 3, '00:00:00', '19:30:00', '00:00:00', '19:30:00', '00:00:00', '00:00:00', '00:00:00'),
(27, 2, '08:30:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(29, 5, '19:30:00', '00:00:00', '20:00:00', '00:00:00', '21:00:00', '00:00:00', '00:00:00'),
(30, 17, '20:30:00', '00:00:00', '21:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medidas`
--

CREATE TABLE `medidas` (
  `id_medidas` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `m_peso` float DEFAULT NULL,
  `m_altura` float DEFAULT NULL,
  `m_torax` float DEFAULT NULL,
  `m_cintura` float DEFAULT NULL,
  `m_braco` float DEFAULT NULL,
  `m_coxa` float DEFAULT NULL,
  `m_panturrilha` float DEFAULT NULL,
  `m_quadril` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medidas`
--

INSERT INTO `medidas` (`id_medidas`, `id_aluno`, `m_peso`, `m_altura`, `m_torax`, `m_cintura`, `m_braco`, `m_coxa`, `m_panturrilha`, `m_quadril`) VALUES
(32, 1009, 64, 1.64, 50, 40, 35, 40, 40, 54),
(34, 1, 85, 1.85, 70, 50, 10, 40, 40, 10),
(36, 1014, 80, 1.78, 80, 50, 35, 45, 30, 50),
(39, 1015, 83, 1.75, 90.9, 78, 27, 60.1, 40, 97),
(41, 1019, 90, 183, 90, 70, 38, 60, 40, 80);

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinos`
--

CREATE TABLE `treinos` (
  `id_treino` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_exercicio` int(11) NOT NULL,
  `series` varchar(11) DEFAULT NULL,
  `repeticoes` varchar(11) DEFAULT NULL,
  `ordem` int(11) NOT NULL,
  `classe_treino` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treinos`
--

INSERT INTO `treinos` (`id_treino`, `id_aluno`, `id_exercicio`, `series`, `repeticoes`, `ordem`, `classe_treino`) VALUES
(2258, 999, 1, '4', '10', 1, 'A'),
(2259, 999, 79, '4', '10', 2, 'A'),
(2260, 999, 4, '4', '10', 3, 'A'),
(2261, 999, 10, '4', '10', 4, 'A'),
(2262, 999, 12, '4', '10', 5, 'A'),
(2263, 999, 13, '4', '10', 6, 'A'),
(2264, 999, 40, '4', '10', 7, 'A'),
(2265, 999, 47, '-', '10/15Min', 0, 'A'),
(2266, 999, 21, '4', '15', 1, 'F'),
(2267, 999, 20, '2', '10', 2, 'F'),
(2268, 999, 19, '4', '10', 3, 'F'),
(2269, 999, 23, '4', '10', 4, 'F'),
(2270, 999, 24, '4', '20', 5, 'F'),
(2271, 999, 25, '4', '20', 6, 'F'),
(2272, 999, 30, '4', '20', 7, 'F'),
(2273, 999, 163, '4', '15', 8, 'F'),
(2274, 999, 47, '-', '10/15Min', 0, 'F'),
(2275, 999, 66, '4', '10', 1, 'B'),
(2276, 999, 67, '4', '10', 2, 'B'),
(2277, 999, 69, '4', '10', 3, 'B'),
(2278, 999, 31, '4', '10', 4, 'B'),
(2279, 999, 164, '4', '10', 5, 'B'),
(2280, 999, 34, '4', '10', 6, 'B'),
(2281, 999, 47, '-', '10/15Min', 0, 'B'),
(2282, 999, 78, '-', '-', 1, 'S'),
(2283, 999, 60, '-', '-', 2, 'S'),
(2284, 999, 47, '-', '10/15Min', 0, 'S'),
(2488, 1009, 1, '4', '10', 1, 'A'),
(2489, 1009, 79, '4', '10', 2, 'A'),
(2490, 1009, 4, '4', '10', 3, 'A'),
(2491, 1009, 10, '4', '10', 4, 'A'),
(2492, 1009, 12, '4', '10', 5, 'A'),
(2493, 1009, 13, '4', '10', 6, 'A'),
(2494, 1009, 40, '4', '10', 7, 'A'),
(2495, 1009, 47, '-', '10/15Min', 0, 'A'),
(2496, 1009, 21, '4', '15', 1, 'F'),
(2497, 1009, 20, '2', '10', 2, 'F'),
(2498, 1009, 19, '4', '10', 3, 'F'),
(2499, 1009, 23, '4', '10', 4, 'F'),
(2500, 1009, 24, '4', '20', 5, 'F'),
(2501, 1009, 25, '4', '20', 6, 'F'),
(2502, 1009, 30, '4', '20', 7, 'F'),
(2503, 1009, 163, '4', '15', 8, 'F'),
(2504, 1009, 47, '-', '10/15Min', 0, 'F'),
(2505, 1009, 66, '4', '10', 1, 'B'),
(2506, 1009, 67, '4', '10', 2, 'B'),
(2507, 1009, 69, '4', '10', 3, 'B'),
(2508, 1009, 31, '4', '10', 4, 'B'),
(2509, 1009, 164, '4', '10', 5, 'B'),
(2510, 1009, 34, '4', '10', 6, 'B'),
(2511, 1009, 47, '-', '10/15Min', 0, 'B'),
(2512, 1009, 78, '-', '-', 1, 'S'),
(2513, 1009, 60, '-', '-', 2, 'S'),
(2514, 1009, 47, '-', '10/15Min', 0, 'S'),
(2515, 1, 1, '3', '10', 1, 'A'),
(2516, 1, 8, '3', '10', 2, 'A'),
(2517, 1, 6, '3', '10', 3, 'A'),
(2518, 1, 15, '4', '10', 4, 'A'),
(2519, 1, 165, '4', '10', 5, 'A'),
(2520, 1, 13, '4', '10', 6, 'A'),
(2521, 1, 40, '4', '10', 7, 'A'),
(2522, 1, 47, '4', '10/15Min', 0, 'A'),
(2523, 1, 21, '4', '4', 1, 'F'),
(2524, 1, 20, '5', '20', 2, 'F'),
(2525, 1, 166, '4', '8', 3, 'F'),
(2526, 1, 167, '4', '15', 4, 'F'),
(2527, 1, 168, '4', '15', 5, 'F'),
(2528, 1, 169, '3', '1min', 6, 'F'),
(2529, 1, 30, '4', '20', 7, 'F'),
(2530, 1, 170, '4', '10', 8, 'F'),
(2531, 1, 171, '4', '10-lento', 8, 'F'),
(2532, 1, 47, '4', '10/15Min', 0, 'F'),
(2533, 1, 66, '4', '10', 1, 'B'),
(2534, 1, 172, '3', '10', 2, 'B'),
(2535, 1, 173, '3', '10', 3, 'B'),
(2536, 1, 174, '4', '10', 4, 'B'),
(2537, 1, 33, '4', '10', 5, 'B'),
(2538, 1, 175, '4', '10', 6, 'B'),
(2539, 1, 38, '4', '10', 7, 'B'),
(2540, 1, 47, '-', '10/15Min', 0, 'B'),
(2541, 1, 78, '-', '-', 1, 'S'),
(2542, 1, 60, '-', '-', 2, 'S'),
(2543, 1, 40, '4', '20', 2, 'S'),
(2544, 1, 42, '4', '20', 2, 'S'),
(2545, 1, 41, '4', '20', 2, 'S'),
(2546, 1, 47, '-', '10/15Min', 0, 'S'),
(2547, 1014, 1, '4', '10', 1, 'A'),
(2548, 1014, 79, '4', '10', 2, 'A'),
(2549, 1014, 4, '4', '10', 3, 'A'),
(2550, 1014, 10, '4', '10', 4, 'A'),
(2551, 1014, 12, '4', '10', 5, 'A'),
(2552, 1014, 13, '4', '10', 6, 'A'),
(2553, 1014, 40, '4', '10', 7, 'A'),
(2554, 1014, 47, '-', '10/15Min', 0, 'A'),
(2555, 1014, 21, '4', '15', 1, 'F'),
(2556, 1014, 20, '2', '10', 2, 'F'),
(2557, 1014, 19, '4', '10', 3, 'F'),
(2558, 1014, 23, '4', '10', 4, 'F'),
(2559, 1014, 24, '4', '20', 5, 'F'),
(2560, 1014, 25, '4', '20', 6, 'F'),
(2561, 1014, 30, '4', '20', 7, 'F'),
(2562, 1014, 163, '4', '15', 8, 'F'),
(2563, 1014, 47, '-', '10/15Min', 0, 'F'),
(2564, 1014, 66, '4', '10', 1, 'B'),
(2565, 1014, 67, '4', '10', 2, 'B'),
(2566, 1014, 69, '4', '10', 3, 'B'),
(2567, 1014, 31, '4', '10', 4, 'B'),
(2568, 1014, 164, '4', '10', 5, 'B'),
(2569, 1014, 34, '4', '10', 6, 'B'),
(2570, 1014, 47, '-', '10/15Min', 0, 'B'),
(2571, 1014, 78, '-', '-', 1, 'S'),
(2572, 1014, 60, '-', '-', 2, 'S'),
(2573, 1014, 47, '-', '10/15Min', 0, 'S'),
(2635, 1024, 7, '4', '10', 2, 'A'),
(2636, 1024, 79, '4', '10', 1, 'A'),
(2637, 1024, 4, '4', '10', 3, 'A'),
(2638, 1024, 57, '4', '10', 4, 'A'),
(2639, 1024, 56, '4', '10', 5, 'A'),
(2640, 1024, 40, '4', '10', 6, 'A'),
(2641, 1024, 47, '-', '15/20Min', 0, 'A'),
(2642, 1024, 33, '4', '10', 7, 'A'),
(2643, 1024, 175, '4', '10', 8, 'A'),
(2644, 1024, 38, '4', '10', 9, 'A'),
(2645, 1024, 21, '4', '20', 1, 'F'),
(2646, 1024, 20, '4', '20', 2, 'F'),
(2647, 1024, 165, '4', '15/20', 3, 'F'),
(2648, 1024, 23, '4', '15', 4, 'F'),
(2649, 1024, 176, '4', '20', 5, 'F'),
(2650, 1024, 28, '4', '20', 6, 'F'),
(2651, 1024, 30, '4', '20', 7, 'F'),
(2652, 1024, 47, '-', '15/20Min', 0, 'F'),
(2653, 1024, 178, '4', '10', 1, 'B'),
(2654, 1024, 179, '4', '10', 2, 'B'),
(2655, 1024, 69, '4', '10', 3, 'B'),
(2656, 1024, 73, '4', '10', 4, 'B'),
(2657, 1024, 11, '4', '15', 5, 'B'),
(2658, 1024, 15, '4', '15', 5, 'B'),
(2659, 1024, 47, '-', '15/20Min', 0, 'B'),
(2660, 1024, 61, '4', '15', 1, 'S'),
(2661, 1024, 60, '4', '15', 2, 'S'),
(2662, 1024, 64, '4', '1Min', 3, 'S'),
(2663, 1024, 65, '4', '15', 4, 'S'),
(2664, 1024, 40, '4', '20', 5, 'S'),
(2665, 1024, 41, '4', '15', 6, 'S'),
(2666, 1024, 47, '-', '15/20Min', 0, 'S'),
(2667, 1026, 1, '4', '10', 1, 'A'),
(2668, 1026, 79, '4', '10', 2, 'A'),
(2669, 1026, 4, '4', '10', 3, 'A'),
(2670, 1026, 10, '4', '10', 4, 'A'),
(2671, 1026, 12, '4', '10', 5, 'A'),
(2672, 1026, 13, '4', '10', 6, 'A'),
(2673, 1026, 40, '4', '10', 7, 'A'),
(2674, 1026, 47, '-', '10/15Min', 0, 'A'),
(2675, 1026, 21, '4', '15', 1, 'F'),
(2676, 1026, 20, '2', '10', 2, 'F'),
(2677, 1026, 19, '4', '10', 3, 'F'),
(2678, 1026, 23, '4', '10', 4, 'F'),
(2679, 1026, 24, '4', '20', 5, 'F'),
(2680, 1026, 25, '4', '20', 6, 'F'),
(2681, 1026, 30, '4', '20', 7, 'F'),
(2682, 1026, 163, '4', '15', 8, 'F'),
(2683, 1026, 47, '-', '10/15Min', 0, 'F'),
(2684, 1026, 66, '4', '10', 1, 'B'),
(2685, 1026, 67, '4', '10', 2, 'B'),
(2686, 1026, 69, '4', '10', 3, 'B'),
(2687, 1026, 31, '4', '10', 4, 'B'),
(2688, 1026, 164, '4', '10', 5, 'B'),
(2689, 1026, 34, '4', '10', 6, 'B'),
(2690, 1026, 47, '-', '10/15Min', 0, 'B'),
(2691, 1026, 78, '-', '-', 1, 'S'),
(2692, 1026, 60, '-', '-', 2, 'S'),
(2693, 1026, 47, '-', '10/15Min', 0, 'S'),
(2694, 1019, 1, '4', '10', 1, 'A'),
(2695, 1019, 79, '4', '10', 2, 'A'),
(2696, 1019, 4, '4', '10', 3, 'A'),
(2697, 1019, 10, '4', '10', 4, 'A'),
(2698, 1019, 12, '4', '10', 5, 'A'),
(2699, 1019, 13, '4', '10', 6, 'A'),
(2700, 1019, 40, '4', '10', 7, 'A'),
(2701, 1019, 47, '-', '10/15Min', 0, 'A'),
(2702, 1019, 21, '4', '15', 1, 'F'),
(2703, 1019, 20, '2', '10', 2, 'F'),
(2704, 1019, 19, '4', '10', 3, 'F'),
(2705, 1019, 23, '4', '10', 4, 'F'),
(2706, 1019, 24, '4', '20', 5, 'F'),
(2707, 1019, 25, '4', '20', 6, 'F'),
(2708, 1019, 30, '4', '20', 7, 'F'),
(2709, 1019, 163, '4', '15', 8, 'F'),
(2710, 1019, 47, '-', '10/15Min', 0, 'F'),
(2711, 1019, 66, '4', '10', 1, 'B'),
(2712, 1019, 67, '4', '10', 2, 'B'),
(2713, 1019, 69, '4', '10', 3, 'B'),
(2714, 1019, 31, '4', '10', 4, 'B'),
(2715, 1019, 164, '4', '10', 5, 'B'),
(2716, 1019, 34, '4', '10', 6, 'B'),
(2717, 1019, 47, '-', '10/15Min', 0, 'B'),
(2718, 1019, 78, '-', '-', 1, 'S'),
(2719, 1019, 60, '-', '-', 2, 'S'),
(2720, 1019, 47, '-', '10/15Min', 0, 'S'),
(2721, 1015, 1, '3', '10', 1, 'A'),
(2722, 1015, 8, '3', '10', 2, 'A'),
(2723, 1015, 6, '3', '10', 3, 'A'),
(2724, 1015, 15, '4', '10', 4, 'A'),
(2725, 1015, 165, '4', '10', 5, 'A'),
(2726, 1015, 13, '4', '10', 6, 'A'),
(2727, 1015, 40, '4', '10', 7, 'A'),
(2728, 1015, 47, '4', '10/15Min', 0, 'A'),
(2729, 1015, 21, '4', '4', 1, 'F'),
(2730, 1015, 20, '5', '20', 2, 'F'),
(2731, 1015, 166, '4', '8', 3, 'F'),
(2732, 1015, 167, '4', '15', 4, 'F'),
(2733, 1015, 168, '4', '15', 5, 'F'),
(2734, 1015, 169, '3', '1min', 6, 'F'),
(2735, 1015, 30, '4', '20', 7, 'F'),
(2736, 1015, 170, '4', '10', 8, 'F'),
(2737, 1015, 171, '4', '10-lento', 8, 'F'),
(2738, 1015, 47, '4', '10/15Min', 0, 'F'),
(2739, 1015, 66, '4', '10', 1, 'B'),
(2740, 1015, 172, '3', '10', 2, 'B'),
(2741, 1015, 173, '3', '10', 3, 'B'),
(2742, 1015, 174, '4', '10', 4, 'B'),
(2743, 1015, 33, '4', '10', 5, 'B'),
(2744, 1015, 175, '4', '10', 6, 'B'),
(2745, 1015, 38, '4', '10', 7, 'B'),
(2746, 1015, 47, '-', '10/15Min', 0, 'B'),
(2747, 1015, 78, '-', '-', 1, 'S'),
(2748, 1015, 60, '-', '-', 2, 'S'),
(2749, 1015, 40, '4', '20', 2, 'S'),
(2750, 1015, 42, '4', '20', 2, 'S'),
(2751, 1015, 41, '4', '20', 2, 'S'),
(2752, 1015, 47, '-', '10/15Min', 0, 'S');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`),
  ADD UNIQUE KEY `id_aluno_UNIQUE` (`id_aluno`);

--
-- Índices de tabela `aulas_grupo`
--
ALTER TABLE `aulas_grupo`
  ADD PRIMARY KEY (`id_aula_grup`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `categoria_UNIQUE` (`categoria`);

--
-- Índices de tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id_exercicio`),
  ADD UNIQUE KEY `nome_exercicio_UNIQUE` (`nome_exercicio`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices de tabela `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horarios`),
  ADD KEY `id_aula_grup` (`id_aula_grup`);

--
-- Índices de tabela `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`id_medidas`),
  ADD UNIQUE KEY `id_aluno_UNIQUE` (`id_aluno`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices de tabela `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`id_treino`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_exercicio` (`id_exercicio`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1027;

--
-- AUTO_INCREMENT de tabela `aulas_grupo`
--
ALTER TABLE `aulas_grupo`
  MODIFY `id_aula_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id_exercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT de tabela `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `medidas`
--
ALTER TABLE `medidas`
  MODIFY `id_medidas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id_treino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2753;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `exercicios`
--
ALTER TABLE `exercicios`
  ADD CONSTRAINT `exercicios_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Restrições para tabelas `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`id_aula_grup`) REFERENCES `aulas_grupo` (`id_aula_grup`);

--
-- Restrições para tabelas `medidas`
--
ALTER TABLE `medidas`
  ADD CONSTRAINT `medidas_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`);

--
-- Restrições para tabelas `treinos`
--
ALTER TABLE `treinos`
  ADD CONSTRAINT `treinos_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `treinos_ibfk_2` FOREIGN KEY (`id_exercicio`) REFERENCES `exercicios` (`id_exercicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
