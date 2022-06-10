-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 24, 2021 alle 20:14
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `autore`
--

CREATE TABLE `autore` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `autore`
--

INSERT INTO `autore` (`id`, `nome`) VALUES
(1, 'Joanne Rowling'),
(2, 'Luigi Pirandello'),
(3, 'Carlo Allodi'),
(4, 'Gianni Rodari'),
(5, 'John Ronald Reuel Tolkien'),
(6, 'Umberto Eco'),
(7, 'George Orwell'),
(8, 'Lev Tolstoj'),
(9, 'Bram Stoker'),
(10, 'Primo Levi'),
(11, 'Dan Brown'),
(12, 'Roald Dahl'),
(13, 'Alessandro Manzoni');

-- --------------------------------------------------------

--
-- Struttura della tabella `composizione`
--

CREATE TABLE `composizione` (
  `libro` int(11) NOT NULL,
  `autore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `composizione`
--

INSERT INTO `composizione` (`libro`, `autore`) VALUES
(3, 1),
(5, 1),
(2, 1),
(4, 1),
(1, 1),
(30, 1),
(28, 1),
(25, 1),
(27, 1),
(26, 1),
(29, 1),
(13, 5),
(37, 5),
(14, 5),
(16, 11),
(15, 11),
(18, 11),
(6, 7),
(11, 9),
(31, 8),
(7, 8),
(36, 2),
(12, 6),
(24, 12),
(32, 10),
(19, 10),
(33, 3),
(21, 3),
(20, 10),
(22, 4),
(23, 4),
(8, 13),
(17, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `genere`
--

CREATE TABLE `genere` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `genere`
--

INSERT INTO `genere` (`id`, `nome`) VALUES
(1, 'fantasy'),
(2, 'giallo'),
(3, 'guerra'),
(4, 'thriller'),
(5, 'romantico'),
(6, 'storico'),
(7, 'sport'),
(8, 'biografia'),
(9, 'avventura'),
(10, 'drammatico'),
(11, 'attualita'),
(12, 'fiaba'),
(13, 'romanzo');

-- --------------------------------------------------------

--
-- Struttura della tabella `libro`
--

CREATE TABLE `libro` (
  `idLibro` int(11) NOT NULL,
  `titolo` varchar(40) NOT NULL,
  `genere` int(11) NOT NULL,
  `trama` text NOT NULL,
  `pubblicazione` year(4) DEFAULT NULL,
  `casaEditrice` varchar(30) DEFAULT NULL,
  `disponibile` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `libro`
--

INSERT INTO `libro` (`idLibro`, `titolo`, `genere`, `trama`, `pubblicazione`, `casaEditrice`, `disponibile`) VALUES
(1, 'Harry Potter e la pietra filosofale', 1, 'primo libro di harry potter', 1997, 'adriano salani', 1),
(2, 'Harry Potter e la camera dei segreti', 1, 'secondo libro', 1998, 'adriano salani', 1),
(3, 'Harry Potter e il prigioniero di Azkaban', 1, 'terzo libro', 1999, 'adriano salani', 1),
(4, 'Harry Potter e la camera dei segreti', 1, 'secondo libro', 1998, 'adriano salani', 1),
(5, 'Harry Potter e il prigioniero di Azkaban', 1, 'terzo libro', 1999, 'adriano salani', 1),
(6, '1984', 1, 'ambientato nel futuro', 2016, 'Mondadori', 1),
(7, 'Guerra e Pace', 6, 'ambientato in russia', 2007, 'Garzanti', 1),
(8, 'I promessi sposi', 6, 'renzo e lucia', 2014, 'BUR', 1),
(11, 'Dracula', 1, 'conte dracula in transilvania', 2006, 'Mondadori', 1),
(12, 'Il nome della rosa', 6, 'romanzo di umberto eco', 2018, 'Bompiani', 1),
(13, 'Il Signore degli anelli', 1, 'ambientato in un mondo fantastico, nel regno di mezzo, Frodo deve distruggere un anello', 2001, 'Bompiani', 1),
(14, 'Lo Hobbit', 1, 'bilbo beggins si unirà ad un gruppo di nani per sconfiggere un drago', 1998, 'Bompiani', 1),
(15, 'Il codice Da Vinci', 4, 'Il codice da Vinci è il quarto romanzo thriller dello scrittore Dan Brown, scritto nell\'aprile del 2003 e pubblicato in Italia nel novembre 2003. È il secondo romanzo, dopo Angeli e Demoni, che richiama in chiave critica la condotta della Chiesa cattolica', 2017, 'Mondadori', 1),
(16, 'Angeli e Demoni', 4, 'La scienza mi dice che deve esserci un Dio. La mente mi dice che Dio non lo comprenderò mai. Il cuore mi dice che non ci si aspetta che io lo comprenda', 2006, 'Mondadori', 1),
(17, 'Il simbolo perduto', 4, 'Robert Langdon riceve una telefonata dall\'assistente del professor Solomon, suo caro amico, che gli chiede di recarsi in Campidoglio a Washington per una conferenza sulla Massoneria, società nata nel XVIII secolo, di cui Solomon fa parte. Il segretario è in realtà Mal\'akh, un falso massone che, riuscito a introdursi nel Campidoglio e a mettere...', 2014, 'Mondadori', 1),
(18, 'Inferno', 4, 'Il romanzo si apre con una misteriosa figura chiamata l\'Ombra che, per fuggire a dei misteriosi inseguitori, si getta dal campanile della Badia Fiorentina, a Firenze.', 2017, 'Mondadori', 1),
(19, 'Se questo è un uomo', 10, 'Se questo è un uomo è un\'opera memorialistica di Primo Levi scritta tra il dicembre 1945 ed il gennaio 1947. Rappresenta la coinvolgente ma meditata testimonianza di quanto vissuto dall\'autore nel campo di concentramento di Auschwitz. Levi sopravvisse infatti alla deportazione nel campo di Monowitz, lager satellite del complesso di Auschwitz e sede dell\'impianto Buna-Werke proprietà della I.G. Farben.', 2001, 'Garzanti', 1),
(20, 'La tregua', 10, 'La tregua è un libro-memoria di Primo Levi, séguito di Se questo è un uomo, che descrive le esperienze dell\'autore dall\'abbandono di Auschwitz (Monowitz) da parte dei tedeschi con l\'arrivo dell\'Armata Rossa sovietica. Racconta il lungo viaggio del deportato ebreo per ritornare in Italia, nella città natale di Torino, con mesi di spostamenti nell\'Europa centro-orientale. La sua testimonianza rappresenta quella dei milioni di sfollati al termine della Seconda Guerra Mondiale, in grandissima parte ex detenuti del Reich tedesco, sia lavoratori coatti che sopravvissuti ai campi di concentramento.', 1980, 'Einaudi', 1),
(21, 'Le avventure di Pinocchio', 12, 'Il romanzo ha come protagonista un personaggio di finzione, appunto Pinocchio, che l\'autore chiamò burattino pur essendo morfologicamente più simile ad una marionetta (corpo di legno con articolazioni, mosso dai fili) al centro di celeberrime avventure', 1997, 'Mondadori', 1),
(22, 'Favole al telefono', 12, 'un padre sempre lontano da casa per lavorare chiama ogni sera suo figlio per leggergli una favola della buonanotte', 2003, 'Einaudi', 1),
(23, 'La freccia azzurra', 12, 'Nella cittadina di Orbetello i bambini attendono l\'arrivo dei doni della Befana. Il malefico assistente della buona vecchina, tuttavia, ha organizzato un terribile piano che mette a rischio la festa', 2005, 'Garzanti', 1),
(24, ' La fabbrica di cioccolato', 1, 'una fabbrica di cioccolato che invita 5 ragazzi a visitarla', 2020, 'Bompiani', 1),
(25, 'Harry Potter e il calice di fuoco', 1, 'quarto libro di harry potter', 2012, 'adriano salani', 1),
(26, 'Harry Potter e l\'ordine della fenice', 1, 'quinto libro della saga di harry potter', 2016, 'adriano salani', 1),
(27, 'Harry Potter e il principe mezzosangue', 1, 'sesto libro della saga di harry potter', 2003, 'adriano salani', 1),
(28, 'Harry Potter e i doni della morte', 1, 'settimo e ultimo libro della saga di harry potter', 2007, 'adriano salani', 1),
(29, 'Harry Potter e la camera dei segreti', 1, 'secondo libro della saga di harry potter', 2008, 'adriano salani', 1),
(30, 'Harry Potter e i doni della morte', 1, 'ultimo libro della saga di harry potter', 2007, 'adriano salani', 1),
(31, 'Guerra e Pace', 6, 'Denso di riferimenti filosofici, scientifici e storici, il racconto sembra unire la forza della storicità e la precisione drammaturgica (persino di Napoleone si fa un ritratto indimenticabile) ad un potente e lucido sguardo metafisico che domina il grande flusso degli eventi, da quelli colossali, come la battaglia di Austerlitz e la battaglia di Borodino, a quelli più intimi.', 2000, 'BUR', 1),
(32, 'Se questo è un uomo', 10, 'Se questo è un uomo è un\'opera memorialistica di Primo Levi scritta tra il dicembre 1945 ed il gennaio 1947. Rappresenta la coinvolgente ma meditata testimonianza di quanto vissuto dall\'autore nel campo di concentramento di Auschwitz. Levi sopravvisse infatti alla deportazione nel campo di Monowitz, lager satellite del complesso di Auschwitz e sede dell\'impianto Buna-Werke proprietà della I.G. Farben.', 2006, 'Bompiani', 1),
(33, 'Le avventure di Pinocchio', 12, 'pinocchio', 2019, 'Garzanti', 1),
(36, 'Il fu Mattia Pascal', 13, 'mattia pascal', 2005, 'Mondadori', 1),
(37, 'Lo Hobbit', 1, 'bilbo beggins', 1998, 'Einaudi', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `prestito`
--

CREATE TABLE `prestito` (
  `libro` int(11) NOT NULL,
  `utente` int(11) NOT NULL,
  `dataFine` date NOT NULL,
  `stato` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `citta` varchar(30) NOT NULL,
  `via` varchar(30) NOT NULL,
  `numeroCivico` int(5) NOT NULL,
  `moroso` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `autore`
--
ALTER TABLE `autore`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `composizione`
--
ALTER TABLE `composizione`
  ADD KEY `fk_autore` (`autore`),
  ADD KEY `fk_libro1` (`libro`);

--
-- Indici per le tabelle `genere`
--
ALTER TABLE `genere`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`idLibro`),
  ADD KEY `fk_genere` (`genere`);

--
-- Indici per le tabelle `prestito`
--
ALTER TABLE `prestito`
  ADD KEY `fk_utente` (`utente`),
  ADD KEY `fk_libro` (`libro`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `autore`
--
ALTER TABLE `autore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `genere`
--
ALTER TABLE `genere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `libro`
--
ALTER TABLE `libro`
  MODIFY `idLibro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `composizione`
--
ALTER TABLE `composizione`
  ADD CONSTRAINT `fk_autore` FOREIGN KEY (`autore`) REFERENCES `autore` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_libro1` FOREIGN KEY (`libro`) REFERENCES `libro` (`idLibro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `fk_genere` FOREIGN KEY (`genere`) REFERENCES `genere` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `prestito`
--
ALTER TABLE `prestito`
  ADD CONSTRAINT `fk_libro` FOREIGN KEY (`libro`) REFERENCES `libro` (`idLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_utente` FOREIGN KEY (`utente`) REFERENCES `utente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
