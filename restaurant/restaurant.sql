-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 09 2016 г., 11:38
-- Версия сервера: 10.1.16-MariaDB
-- Версия PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `restaurant`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '2', 1481135526),
('manager', '3', 1481135526),
('user', '1', 1481135526);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, 'Can do anything', NULL, NULL, 1481135526, 1481135526),
('manager', 1, 'Can manage entities in database, but not users', NULL, NULL, 1481135526, 1481135526),
('quest', 1, 'Nobody', NULL, NULL, 1481135526, 1481135526),
('user', 1, 'Can use the query UI and nothing else', NULL, NULL, 1481135526, 1481135526);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'manager'),
('manager', 'user'),
('user', 'quest');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `dishes`
--

CREATE TABLE `dishes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `hidden` tinyint(1) DEFAULT '0',
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `notes`, `hidden`, `img_url`) VALUES
(1, 'Салат Крабовый', 'Готовится 3 часа! Во время приготовления лимон резать очень аккуратно.. Что также важно - не приговорить такой классный салат во время приготовления в одиночестве:) Доведите данную процедуру до конца и порадуйте родных и близких!', 0, 'salat_krabovii.jpg'),
(2, 'Яблочный Пирог', '', 0, 'apple_pie2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `dishes_ingredients`
--

CREATE TABLE `dishes_ingredients` (
  `dish_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `measure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `dishes_ingredients`
--

INSERT INTO `dishes_ingredients` (`dish_id`, `ingredient_id`, `quantity`, `measure`) VALUES
(1, 2, 210, 'грамм'),
(1, 3, 3, 'ложки'),
(1, 1, 10, 'штук'),
(2, 4, 5, 'штук'),
(2, 6, 1, 'кг'),
(2, 7, 3, 'штук'),
(2, 5, 2, 'литра');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `urlAlias` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Ingredients/Ingredient3/606929.png', 3, 1, 'Ingredient', '0f9b373e9f-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `hidden` tinyint(1) DEFAULT '0',
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `notes`, `hidden`, `img_url`) VALUES
(1, 'Крабовые палочки', '', 0, 'crabs_sticks.jpg'),
(2, 'Кукуруза', '', 0, ''),
(3, 'Сметана', '', 0, ''),
(4, 'Яблоки', '', 0, ''),
(5, 'Молоко', '', 0, ''),
(6, 'Мука', '', 0, ''),
(7, 'Яйца', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1481135513),
('m140622_111540_create_image_table', 1481226423),
('m140622_111545_add_name_to_image_table', 1481226424),
('m160929_115707_init_ingredients_table', 1481135517),
('m160929_121244_init_dishes_table', 1481135517),
('m160929_121613_init_dishes_ingredients_table', 1481135519),
('m160929_135017_init_users_table', 1481135521),
('m160929_145303_init_rbac_tables', 1481135523),
('m160929_145747_add_predefined_users', 1481135526),
('m160929_152433_insert_roles', 1481135526);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `auth_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`, `updated_at`, `auth_key`) VALUES
(1, 'user', '$2y$13$V2dlt2iusQAjTNmuV4t4judmqjz/TtxwKxro8IrDFuqVQBVtE3sXy', 'user@example.com', 1481135523, 1481135523, '7?O">Q?X?3?gv????K??B 8?0???\0??mB?Wﾒh?u?"??8?y????d??B?5??	???r(H??!?|?%I@?\0?#;i+?-?ૠ@F??f?20???k<?v???Rgc????????SfxGg?W????R\nQ?乍);??^?J?y?VLa5?k??y???\\d٣[??y?1?d!?''w_r??2ꖥ>?Ӂ#???Z?@?\n??zs?:?gb?? ???l?f??o?B>???=b??4?'),
(2, 'admin', '$2y$13$3kjqCYcO5DXOZxjF9QIA6uSn7Ym5Avb759nOZWgVWo4KsXqIPvwCq', 'admin@example.com', 1481135524, 1481135524, 'C?<???H>???s??\0gz?χG?????????xz????je\nj?yY(??n?(>???<?&M?\n?v?????0E??+C?Ǩ@˙q?S.	/p?2??c9?y???ߒ????n??c??u13??(?w0&ͱD????A????*?? ?i?9;@b?>B?6??:?K?????1??ǭ-?l\Z"Z?g????DA??E???U??JT??<?J??Au??&??^]??j?v?4T?{?;F:??\0f?,4'),
(3, 'manager', '$2y$13$zQavxBTwUfmilBlZ7BUHCuP33LKzctjIdwOP6pvuu8661P8u47Qbu', 'manager@example.com', 1481135525, 1481135525, '?hO6??B?(??g?ZaC?D??????s3?Y????Z?;ou^n????g?????Fğ?.??Cȧ?\Z?y????[}??ds?Op?Z??@?7aV{WP??f9?4\0?E????E??D?#?????}?????T?H?aJ????9\Z?͖0?9??????m??#??*?\\?]??gC???6?ʌC!??`܎??Ee??}y)?|8i?Ƭt?f.?x;??D?%о?\Z?x?3Ʀ?n?????B??R3??J?i?????E??\rt');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dishes_ingredients`
--
ALTER TABLE `dishes_ingredients`
  ADD KEY `dishes_fk` (`dish_id`),
  ADD KEY `ingredients_fk` (`ingredient_id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `auth_key` (`auth_key`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `dishes_ingredients`
--
ALTER TABLE `dishes_ingredients`
  ADD CONSTRAINT `dishes_fk` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`),
  ADD CONSTRAINT `ingredients_fk` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
