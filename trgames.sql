-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 14 2023 г., 17:20
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `trgames`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bignews`
--

CREATE TABLE IF NOT EXISTS `bignews` (
  `idnews` int(11) NOT NULL AUTO_INCREMENT,
  `текст` varchar(700) NOT NULL,
  `img` varchar(30) NOT NULL,
  `заголовок` varchar(100) NOT NULL,
  PRIMARY KEY (`idnews`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `bignews`
--

INSERT INTO `bignews` (`idnews`, `текст`, `img`, `заголовок`) VALUES
(1, 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend l', 'anime.jpg', 'Организация игр в мафию'),
(2, 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend l', 'pic02.jpg', 'FEUGIAT ALIQUAM'),
(8, 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', '52.jpg', 'Организация игр на выезде');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) NOT NULL,
  `ava` varchar(20) NOT NULL,
  `Коммент` varchar(300) NOT NULL,
  `userlog` varchar(20) NOT NULL,
  `idigropr` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `ava`, `Коммент`, `userlog`, `idigropr`) VALUES
(1, 'img171.jpg', 'отличный игропрактик, игра прошла отлично', 'kent', 1),
(2, 'img172.jpg', 'СПасибо за прекрасную организацию.', '123', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `mess`
--

CREATE TABLE IF NOT EXISTS `mess` (
  `idmess` int(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(600) NOT NULL,
  `idIgroka` varchar(20) NOT NULL,
  `idRukovodit` varchar(20) NOT NULL,
  PRIMARY KEY (`idmess`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `mess`
--

INSERT INTO `mess` (`idmess`, `text`, `idIgroka`, `idRukovodit`) VALUES
(5, 'да да да', 'Admin', 'kent'),
(13, 'чо аниме', 'kent', 'ekatze'),
(18, 'да да да', 'kent', 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `newspraktic`
--

CREATE TABLE IF NOT EXISTS `newspraktic` (
  `idnews` int(10) DEFAULT NULL,
  `img` varchar(20) NOT NULL,
  `text` varchar(500) NOT NULL,
  `Заголовок` varchar(100) NOT NULL,
  `idRukovodit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `newspraktic`
--

INSERT INTO `newspraktic` (`idnews`, `img`, `text`, `Заголовок`, `idRukovodit`) VALUES
(1, 'news1.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', 'Это заголовок', '1'),
(3, 'news1.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', 'Заголовок 2', '2'),
(2, 'news1.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', 'Заголовок 2', '1'),
(4, 'news1.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', 'Заголовок 3 413213 ', '2'),
(5, 'news1.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', 'Заголовок 3 413213 ', '3'),
(6, 'news1.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', 'Заголовок 3 413213 ', '3'),
(7, 'ava.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', 'Еще 1 заголовок', '1'),
(NULL, 'img172.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibe', 'Еще 1 заголовок', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `svyaz_rasp_igrok_prepod`
--

CREATE TABLE IF NOT EXISTS `svyaz_rasp_igrok_prepod` (
  `idRukovodit` int(10) NOT NULL,
  `KodRasp` int(10) NOT NULL,
  `idIgroka` int(10) NOT NULL,
  `idsvyazi` int(10) NOT NULL,
  UNIQUE KEY `KodRasp` (`KodRasp`),
  KEY `KodRasp_2` (`KodRasp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `svyaz_rasp_igrok_prepod`
--

INSERT INTO `svyaz_rasp_igrok_prepod` (`idRukovodit`, `KodRasp`, `idIgroka`, `idsvyazi`) VALUES
(3, 1, 482, 80),
(1, 2, 482, 94),
(1, 3, 482, 74);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `idUser` int(10) NOT NULL,
  `priority` int(10) NOT NULL,
  `login` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`idUser`, `priority`, `login`, `pass`) VALUES
(1, 2, 'Bobojan', 'Bobojan'),
(14, 2, 'kent', 'our'),
(33, 1, 'Admin', 'Admin'),
(44, 2, 'ekatze', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `группа`
--

CREATE TABLE IF NOT EXISTS `группа` (
  `idGroup` int(10) NOT NULL,
  `Статус группы` int(11) NOT NULL,
  `Начало` int(11) NOT NULL,
  `Конец` int(11) NOT NULL,
  `idRukovodit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `игрок`
--

CREATE TABLE IF NOT EXISTS `игрок` (
  `Фамилия` varchar(20) NOT NULL,
  `Имя` varchar(20) NOT NULL,
  `Отчество` varchar(20) NOT NULL,
  `Возраст` varchar(10) NOT NULL,
  `Пол` varchar(20) NOT NULL,
  `О себе` varchar(200) NOT NULL,
  `idGamer` int(100) NOT NULL,
  `login` varchar(20) NOT NULL,
  `ava` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `игрок`
--

INSERT INTO `игрок` (`Фамилия`, `Имя`, `Отчество`, `Возраст`, `Пол`, `О себе`, `idGamer`, `login`, `ava`) VALUES
('Семеновна', 'Валерия', 'Денисовна', '25', 'Ж', 'цйуцйуйцу йцувцй йц ', 1, '123', ''),
('Ta', 'dick', 'TorJkee', '', 'm', '79227221', 482, 'kent', 'pic04.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `игропрактик`
--

CREATE TABLE IF NOT EXISTS `игропрактик` (
  `idRukovodit` int(10) NOT NULL,
  `Имя` varchar(20) NOT NULL,
  `Фамилия` varchar(20) NOT NULL,
  `Отчество` varchar(20) NOT NULL,
  `Возраст` varchar(20) NOT NULL,
  `Опыт` varchar(20) NOT NULL,
  `Образование` varchar(20) NOT NULL,
  `Телефон` varchar(20) NOT NULL,
  `Почта` varchar(20) NOT NULL,
  `Фото` varchar(10) NOT NULL,
  `О себе` varchar(300) NOT NULL,
  `img` varchar(20) NOT NULL,
  `login` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `игропрактик`
--

INSERT INTO `игропрактик` (`idRukovodit`, `Имя`, `Фамилия`, `Отчество`, `Возраст`, `Опыт`, `Образование`, `Телефон`, `Почта`, `Фото`, `О себе`, `img`, `login`) VALUES
(1, 'Ангелина', 'Кошкина', 'Ивановна', '30', '4 года', 'СпбГУ Психолог', '+782112312321', 'nestv@ya.ru', '123.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagitt', 'pic041.jpg', 'angelina'),
(2, 'Василиса', 'Калининградова', 'Ильина', '35', '8 лет', 'МГИМО Психолог', '+78555555123', 'TRANGames@ya.ru', 'vasilisa.j', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagitt', 'vasilisa.jpg', 'vasya'),
(3, 'Екатиерина', 'Нестерова', 'Васильевна', '29', '7 лет', 'СпбГАСУ Психолог', '+78213123311', 'ekatetinaNesty@ya.ru', '777.jpg', 'Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagitt', '777.jpg', 'ekatze');

-- --------------------------------------------------------

--
-- Структура таблицы `расписание`
--

CREATE TABLE IF NOT EXISTS `расписание` (
  `KodRasp` int(10) NOT NULL,
  `idGroup` int(10) NOT NULL,
  `День недели` varchar(20) NOT NULL,
  `Время` varchar(30) NOT NULL,
  `Дата` varchar(10) NOT NULL,
  `Название` varchar(30) NOT NULL,
  `idRukovodit` int(10) NOT NULL,
  PRIMARY KEY (`KodRasp`),
  UNIQUE KEY `KodRasp` (`KodRasp`),
  KEY `KodRasp_2` (`KodRasp`),
  KEY `KodRasp_3` (`KodRasp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `расписание`
--

INSERT INTO `расписание` (`KodRasp`, `idGroup`, `День недели`, `Время`, `Дата`, `Название`, `idRukovodit`) VALUES
(1, 1, 'Понедельник', '17:00 -19:00', '04.06.2021', 'Русская рулетка', 3),
(2, 2, 'Понедельник', '19:30-21:30', '04.06.2021', 'Монополия', 3),
(3, 3, 'Понедельник', '14:00-15:30', '04.06.2021', 'Покер?', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
