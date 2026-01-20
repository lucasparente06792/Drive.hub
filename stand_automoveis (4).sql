-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Jan-2026 às 17:10
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `stand_automoveis`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telemovel` varchar(20) DEFAULT NULL,
  `nif` varchar(20) DEFAULT NULL,
  `morada` text DEFAULT NULL,
  `data_criacao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telemovel`, `nif`, `morada`, `data_criacao`) VALUES
(1, 'João Silva', 'joao.silva@exemplo.com', '910000000', '123456789', NULL, '2026-01-08 22:49:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `versao` varchar(50) DEFAULT NULL,
  `ano` int(4) NOT NULL,
  `combustivel` enum('Gasolina','Diesel','Elétrico','Híbrido','GPL') NOT NULL,
  `quilometragem` int(11) NOT NULL,
  `cilindrada` int(11) DEFAULT NULL,
  `potencia` int(11) DEFAULT NULL,
  `cor` varchar(30) DEFAULT NULL,
  `matricula` varchar(15) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `estado` enum('Disponível','Reservado','Vendido') DEFAULT 'Disponível',
  `foto_capa` varchar(255) DEFAULT NULL,
  `data_registo` datetime DEFAULT current_timestamp(),
  `destaque` tinyint(1) DEFAULT 0,
  `comprador_contacto` varchar(20) DEFAULT NULL,
  `data_venda` datetime DEFAULT NULL,
  `comprador_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `marca`, `modelo`, `descricao`, `versao`, `ano`, `combustivel`, `quilometragem`, `cilindrada`, `potencia`, `cor`, `matricula`, `preco`, `estado`, `foto_capa`, `data_registo`, `destaque`, `comprador_contacto`, `data_venda`, `comprador_email`) VALUES
(1, 'BMW', 'Série 3', '', '320d Pack M', 2020, 'Diesel', 45000, 180, 750, NULL, 'AA-00-XX', 32500.00, 'Disponível', 'uploads/1767917837_BMW-Serie-3.webp', '2026-01-08 22:49:49', 0, '968102322', '2026-01-12 16:28:58', '06brunotorre06@gmail.com'),
(2, 'Renault', 'Clio', '', '0.9 TCe', 2018, 'Gasolina', 60000, 68, 100, NULL, 'BB-11-YY', 12900.00, 'Disponível', 'uploads/1767976024_clio.jpg', '2026-01-08 22:49:49', 0, '968102322', '2026-01-09 15:53:58', 'lucasparente06@gmail.com'),
(3, 'Tesla', 'Model 3', '', 'Long Range', 2022, 'Elétrico', 15000, 180, 750, NULL, 'CC-22-ZZ', 45000.00, 'Disponível', 'uploads/1767916058_tesla model 3.jpg', '2026-01-08 22:49:49', 0, NULL, NULL, NULL),
(4, 'fiat', '500', '', 's line', 2014, 'Gasolina', 12000, 45, 180, NULL, 'AV-26-TR', 5000.00, 'Disponível', 'uploads/1767916080_fiat 500.jpg', '2026-01-08 23:01:52', 0, '968102322', '2026-01-09 15:49:12', 'lucasparente06@gmail.com'),
(6, 'ferrari', 'la ferrari', '', 'SF90', 2019, 'Diesel', 10000, 180, 750, NULL, 'AB-23-ER', 2500000.00, 'Disponível', 'uploads/1767917990_Ferrari-LaFerrari-9.jpg', '2026-01-08 23:27:07', 1, NULL, NULL, NULL),
(7, 'Seat', 'Ibiza', '', 'FR', 2016, 'Gasolina', 45210, 4, 65, NULL, 'AX-26-VB', 8800.00, 'Disponível', 'uploads/1767974013_seat_ibiza.png', '2026-01-09 15:53:33', 0, NULL, NULL, NULL),
(8, 'Peugeot', '208', '', 'GTI', 2020, 'Diesel', 65000, 0, 120, NULL, 'SW-77-KS', 13000.00, 'Disponível', 'uploads/1767976229_peugeot_208.jpg', '2026-01-09 16:25:47', 0, NULL, NULL, NULL),
(9, 'Mercedes-Benz', 'CLE Coupé', '', '220 d', 2023, 'Híbrido', 30540, 2, 197, NULL, 'KJ-99-LP', 62000.00, 'Disponível', 'uploads/1767976674_mercedes-benz.avif', '2026-01-09 16:37:54', 1, NULL, NULL, NULL),
(10, 'BMW', 'Serie 1', '', '118d', 2007, 'Diesel', 320000, 1, 127, NULL, 'TY-97_BV', 7500.00, 'Disponível', 'uploads/1767977629_bmw_serie1.jpg', '2026-01-09 16:53:49', 0, NULL, NULL, NULL),
(11, 'Cupra', 'Formentor', '', 'VZ5', 2024, 'Híbrido', 45000, 2, 230, NULL, 'MS-76-ZP', 220000.00, 'Disponível', 'uploads/1767977789_cupra.webp', '2026-01-09 16:56:29', 0, NULL, NULL, NULL),
(12, 'Opel', 'Corsa', '', 'CDTI', 2005, 'Gasolina', 140300, 1, 75, NULL, '09-45-VZ', 1200.00, 'Disponível', 'uploads/1767978029_opel-corsa-2000-2006-1750416212.4999547.jpg', '2026-01-09 16:59:09', 0, NULL, NULL, NULL),
(13, 'Mazda', 'CX-30', '', 'Prime-Line', 2025, 'Híbrido', 20000, 1, 190, NULL, 'AQ-87-PL', 30000.00, 'Disponível', 'uploads/1767978199_mazda.avif', '2026-01-09 17:03:19', 0, NULL, NULL, NULL),
(14, 'Audi', 'A7', '', '40 TDI', 2012, 'Gasolina', 43540, 2, 204, NULL, 'GT-21-OP', 23100.00, 'Disponível', 'uploads/1767978331_ihbtfurvuanx4krck5w0.webp', '2026-01-09 17:05:31', 0, NULL, NULL, NULL),
(15, 'Porsche', 'Cayenne', '', 'GTS', 2025, 'Híbrido', 13000, 2, 230, NULL, 'UY-16-NB', 82000.00, 'Disponível', 'uploads/1767978530_2023-Porsche-Cayenne-S-Platinum-Edition.avif', '2026-01-09 17:08:22', 0, NULL, NULL, NULL),
(16, 'Dacia', 'Bigster', '', 'SUV', 2023, 'Diesel', 56000, 2, 123, NULL, 'JH-90-AZ', 19950.00, 'Disponível', 'uploads/1767978723__vn_unique_ONE_DACIA_PP_LARGE_DENSITY1.png', '2026-01-09 17:12:03', 0, NULL, NULL, NULL),
(17, 'Renault', 'Twingo', '', 'E-Tech Elétrico', 2021, 'Elétrico', 24550, 2, 65, NULL, 'LC-82-HW', 15900.00, 'Disponível', 'uploads/1767978901_img_944x629$2019_01_22_11_44_04_136998.jpg', '2026-01-09 17:15:01', 0, '968102322', '2026-01-10 05:46:04', 'lucasparente06@gmail.com'),
(18, 'Peugeot', '2008', '', '1.2 PureTech', 2020, 'Gasolina', 78920, 1, 90, NULL, 'GN-98-MZ', 27000.00, 'Disponível', 'uploads/1767979104_Cardan-Peugeot-e2008-01.webp', '2026-01-09 17:18:24', 0, '968102322', '2026-01-12 16:27:30', '06brunotorre06@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos_fotos`
--

CREATE TABLE `veiculos_fotos` (
  `id` int(11) NOT NULL,
  `veiculo_id` int(11) NOT NULL,
  `caminho_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `veiculos_fotos`
--

INSERT INTO `veiculos_fotos` (`id`, `veiculo_id`, `caminho_foto`) VALUES
(1, 18, '../uploads/18_1768232494_0_peugeot_interior.webp'),
(2, 18, '../uploads/18_1768232589_0_peugeot_interior_tras.jpg'),
(4, 17, '../uploads/17_1768233038_1_twingo_tras.jpg'),
(5, 17, '../uploads/17_1768233071_0_Renault_twingo_interior.jpg'),
(6, 16, '../uploads/16_1768233131_0_dacia_frente.webp'),
(7, 16, '../uploads/16_1768233131_1_dacia_tras.jpg'),
(8, 15, '../uploads/15_1768233225_0_porsche_frente.jpg'),
(9, 15, '../uploads/15_1768233225_1_porsche_tras.jpg'),
(10, 14, '../uploads/14_1768233287_0_audi_tras.webp'),
(11, 14, '../uploads/14_1768233287_1_audi_frente.webp'),
(12, 13, '../uploads/13_1768233343_0_mazda_tras.png'),
(13, 13, '../uploads/13_1768233343_1_mazda_frente.jpg'),
(14, 12, '../uploads/12_1768233405_0_opel_tras.jpg'),
(15, 12, '../uploads/12_1768233405_1_opel_frente.jpg'),
(16, 11, '../uploads/11_1768233471_0_cupra_frente.jpg'),
(18, 11, '../uploads/11_1768233471_2_cupra_tras.jpg'),
(19, 10, '../uploads/10_1768233559_0_bmw_tras.jpg'),
(20, 10, '../uploads/10_1768233559_1_bmw_tras.webp'),
(21, 9, '../uploads/9_1768233635_0_mercedes_tras.webp'),
(22, 9, '../uploads/9_1768233635_1_mercedez_frente.webp'),
(23, 8, '../uploads/8_1768233693_0_208_tras.jpeg'),
(24, 8, '../uploads/8_1768233693_1_208_frente.jpg'),
(25, 7, '../uploads/7_1768233759_0_seat_tras.jpg'),
(26, 7, '../uploads/7_1768233759_1_seat_frente.jpg'),
(27, 6, '../uploads/6_1768233909_0_ferrari3.jpg'),
(28, 6, '../uploads/6_1768233909_1_ferrari2.jpg'),
(29, 6, '../uploads/6_1768233909_2_ferrari.webp'),
(30, 4, '../uploads/4_1768233976_0_fiat_tras.jpg'),
(31, 4, '../uploads/4_1768233976_1_fiat_interior.jpg'),
(32, 3, '../uploads/3_1768234041_0_tesla_tras.webp'),
(33, 3, '../uploads/3_1768234041_1_tesla_frente.jpg'),
(34, 2, '../uploads/2_1768234102_0_renault_atras.webp'),
(35, 2, '../uploads/2_1768234102_1_renault_frente.jpg'),
(36, 1, '../uploads/1_1768234196_0_bmw_tras_m3.jpg'),
(37, 1, '../uploads/1_1768234196_1_bmw_frente_m3.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `veiculo_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `data_venda` datetime DEFAULT current_timestamp(),
  `preco_final` decimal(10,2) NOT NULL,
  `metodo_pagamento` varchar(50) DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `veiculo_id`, `cliente_id`, `data_venda`, `preco_final`, `metodo_pagamento`, `observacoes`) VALUES
(1, 2, 1, '2026-01-08 22:49:49', 12500.00, 'Crédito', 'Oferta do registo e depósito cheio');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricula` (`matricula`);

--
-- Índices para tabela `veiculos_fotos`
--
ALTER TABLE `veiculos_fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `veiculo_id` (`veiculo_id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `veiculo_id` (`veiculo_id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `veiculos_fotos`
--
ALTER TABLE `veiculos_fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `veiculos_fotos`
--
ALTER TABLE `veiculos_fotos`
  ADD CONSTRAINT `veiculos_fotos_ibfk_1` FOREIGN KEY (`veiculo_id`) REFERENCES `veiculos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`veiculo_id`) REFERENCES `veiculos` (`id`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
