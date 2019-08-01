-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 01 2019 г., 22:25
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog-laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `content`, `user_id`, `comment_id`, `created_at`, `updated_at`) VALUES
(1, 'бпролпб варот dyn dyn ydn dyn dyn нво', '2', '1', '2019-07-19 18:27:47', '2019-07-19 18:27:47'),
(2, 'vedv уиму btre t tb vedv уиму btre t tb vedv уиму btre t tb vedv уиму btre t tb', '1', '4', '2019-07-19 18:36:22', '2019-07-19 18:36:22'),
(3, 'vedv уиму btre t tb vedv уиму btre t tb vedv уиму btre t tb vedv уиму btre t tb', '1', '4', '2019-07-19 18:37:17', '2019-07-19 18:37:17'),
(4, 'vel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisan migratns\\blog-laravel>php artisa', '1', '4', '2019-07-19 18:37:38', '2019-07-19 18:37:38'),
(5, 'и у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу и', '1', '4', '2019-07-19 18:44:06', '2019-07-19 18:44:06'),
(6, 'и у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу ии у у ук пруек btre икеу и', '1', '4', '2019-07-19 18:44:39', '2019-07-19 18:44:39'),
(7, '6451351351', '2', '1', '2019-07-19 19:13:27', '2019-07-19 19:13:27'),
(8, 'Конченые', '1', '5', '2019-07-19 19:35:04', '2019-07-19 19:35:04'),
(9, 'Идите все в тюрьму!!!', '2', '2', '2019-07-20 06:51:17', '2019-07-20 06:51:17'),
(10, 'нгьгьень7гь', '1', '5', '2019-07-20 07:02:13', '2019-07-20 07:02:13'),
(11, 'Крокобраз', '2', '1', '2019-07-22 06:25:15', '2019-07-22 06:25:15'),
(12, 'пкцуфпк', '2', '16', '2019-07-29 18:07:24', '2019-07-29 18:07:24'),
(13, 'Ну это же скотство!!!', '2', '1', '2019-07-30 11:03:49', '2019-07-30 11:03:49');

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_show` tinyint(1) DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `viewed` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `short_description`, `description`, `image`, `image_show`, `published`, `viewed`, `user_id`, `created_at`, `updated_at`) VALUES
(126, 'Yаши приключения начались2', 'yashi-priklyucheniya-nachalis2-0108191701', '<p>Наши приключения начались еще в аэропорту 13 ноября (число то какое!)...наш рейс на Краснодар был отменен из-за тумана и мы прокуковали в Домодедово более 10 часов, но ночью таки улетели и, что немаловажно, приземлились:) Краснодар встретил нас туманом и зел</p>', '<p>Наши приключения начались еще в аэропорту 13 ноября (число то какое!)...наш рейс на Краснодар был отменен из-за тумана и мы прокуковали в Домодедово более 10 часов, но ночью таки улетели и, что немаловажно, приземлились:) Краснодар встретил нас туманом и зелеными деревьями от чего я была слегка, как зачарованная....сочная зеленая листва в ноябре это круто) В Краснодаре мы поселились у Нади-Lifa и ее прекрасной семьи и жили у ребят все время пока были в Краснодаре. Узнали о такой республике, как Адыгея и еще много интересного. 15 ноября был наш первый МК в Новороссийске. Автобус на Новоросс был в 7.20 утра 15.11, а так как спать мы легли только в часика 3 утра, естественно утром проснулись так минимально поздно и поэтому мужу Нади пришлось поиграть в фильм &laquo;Такси&raquo; когда он вез нас на вокзал...незабываемая поездочка была, но на автобус мы таки успели и отрубились в нем практически сразу еще не выехав за пределы Краснодара, а проснулись только в Новороссийске и открыли рты от изумления...ГОРЫ! Море! Если честно от восторга у</p>', 'default.jpg', NULL, 1, 36, 1, '2019-07-14 08:39:48', '2019-08-01 15:55:07'),
(128, 'ОБОЛДЕННАЯ!zee', 'oboldennayazee-0108191840', '<p>Сразу после Новороссийска по плану был Краснодар и там предстояли самые сложные МК т. к. на альбом там было целых три (!!!) группы и никаких перерывов между занятиями. Приехав ночью из Новороссийска уже на след день у нас был МК по альбому в Краснодаре. Физически было сложно т. к. недосыпы давали о себе знать, .но опять же,</p>', '<p>Сразу после Новороссийска по плану был Краснодар и там предстояли самые сложные МК т. к. на альбом там было целых три (!!!) группы и никаких перерывов между занятиями. Приехав ночью из Новороссийска уже на след день у нас был МК по альбому в Краснодаре. Физически было сложно т. к. недосыпы давали о себе знать, .но опять же, люди решили все:) Первая группа на альбом собралась не просто чудесная, а ОБОЛДЕННАЯ!!! Девочки с которыми общались виртуально пришли на мои реальные МК и это была мега-встреча! Все прошло на позитиве, с юмором, разговорами о жизни, скрапе, ценах на работы и вообще обо всем на свете. Вечером я была разбита, но довольна и счастлива...Я очень переживала и опасалась МК именно в Краснодаре т. к. по рассказам и слухам публика там тяжелая и все такие опытные скрап-мастерицы, но в результате девочки ушли довольные и, я уверена, получили новый нужный им опыт для своего дальнейшего скрап-развития. Вика, отдельное спасибо тебе за подарок для Софии, слоник занял достойное место на подушке и теперь он ездит повсюду вместе с ней)</p>', 'default.jpg', NULL, 1, 22, 2, '2019-07-14 08:45:06', '2019-08-01 15:40:47'),
(129, 'После Краснодара был А', 'posle-krasnodara-byl-a-3107191053', '<p>После Краснодара был Армавир....маленький городок в Адыгее. Город ветров, как мы с Вовой его назвали. Саша, очень хотим сказать тебе отдельное спасибо за уют и тепло, которое ты нам подарила) МК прошли легко и на одном дыхании. Группы были не очень большие и это стало своего рода передышкой, ведь до этого в Краснодаре мы работали неделю просто нон-стоп.</p>', '<p>После Краснодара был Армавир....маленький городок в Адыгее. Город ветров, как мы с Вовой его назвали. Саша, очень хотим сказать тебе отдельное спасибо за уют и тепло, которое ты нам подарила) МК прошли легко и на одном дыхании. Группы были не очень большие и это стало своего рода передышкой, ведь до этого в Краснодаре мы работали неделю просто нон-стоп. Из Армавира наш путь лежал в Ростов-на-Дону...и тут было совсем весело. Билеты на поезд до Ростова нужно было купить заранее т. к. их быстро раскупают и вечером мы решили этим заняться. Итак, открыв сайт ЖД-вокзала Армавира стали искать поезда на Ростов в тот же вечер или на ночь, все было распродано кроме плацкартных билетов на поезд Грозный-Москва до Ростова....прочитав направление поезда я как-то подозрительно посмотрела на Сашу и Вову и переспросила ЭТО ТОТ САМЫЙ ГРОЗНЫЙ?! Признаю, у меня географический кретинизм и о том, что Чечня находится так близко я даже не подозревала...в результате билеты на этот поезд мы купили. Зайдя в вагон поезда Вова обранил фразу, что-то типа ТАК, ПОНЯТНО, но я</p>', 'b1e9db22a1155303cc9544ea7a4055be.jpg', NULL, 1, 9, 5, '2019-07-14 08:45:36', '2019-08-01 15:53:37'),
(130, 'была такая сонная, что', 'byla-takaya-sonnaya-chto-3107191056', NULL, '<p>подозрительно посмотрела на Сашу и Вову и переспросила ЭТО ТОТ САМЫЙ ГРОЗНЫЙ?! Признаю, у меня географический кретинизм и о том, что Чечня находится так близко я даже не подозревала...в результате билеты на этот поезд мы купили. Зайдя в вагон поезда Вова обранил фразу, что-то типа ТАК, ПОНЯТНО, но я была такая сонная, что не стала даже переспрашивать, что именно ему понятно и что вообще такое, мечтала только о том, чтобы лечь спать, что собственно и сделала, а просыпаясь пару раз ночью мне было глубоко непонятно, какого черта Вова торчит около меня, а не спит на своем месте (а у нас места были не рядом и у обоих верхние). Проснувшись утром от визга детей я поняла чего он меня сторожил...хм, во всем вагоне мы были единственными славянами, а всю ночь Вова торчал рядом со мной т. к. боялся меня одну оставлять, наслушавшись в Краснодаре и</p>', 'f18501578a597b0afd38afd5cbfb01aa.jpg', NULL, 0, 2, 1, '2019-07-14 09:13:00', '2019-08-01 15:52:13'),
(131, 'кпууп', 'kpuup-3107191056', '<p>епрыкуи е wreb t tet tewb wreb</p>', '<p>епрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wrebепрыкуи е wreb t tet tewb wreb</p>', '59df696e0d554e0db66e6604eb00657f.jpg', NULL, 1, 7, 2, '2019-07-18 12:41:51', '2019-08-01 15:55:00'),
(132, 'Database Considerations', 'database-considerations-3107191057', '<p>By default, Laravel includes an App\\User Eloquent model in your app directory. This model may be used with the default Eloquent authentication driver. If your application is not using Eloquent, you may use the database authentication driver which uses the Laravel query builder.</p>', '<p>By default, Laravel includes an App\\User Eloquent model in your app directory. This model may be used with the default Eloquent authentication driver. If your application is not using Eloquent, you may use the database authentication driver which uses the Laravel query builder. When building the database schema for the App\\User model, make sure the password column is at least 60 characters in length. Maintaining the default string column length of 255 characters would be a good choice. Also, you should verify that your users (or equivalent) table contains a nullable, string remember_token column of 100 characters. This column will be used to store a token for users that select the &quot;remember me&quot; option when logging into your application.</p>', '0ac9fe16429dff17a45a7562120d952e.jpg', NULL, 1, 1, 1, '2019-07-18 12:44:31', '2019-07-31 07:57:08'),
(133, 'Ирина запись', 'irina-zapis-3107191057', '<p>When building the database schema for the App\\User model, make sure the password column is at least 60 characters in length. Maintaining the default string column length of 255 characters would be a good choice.</p>', '<p>At its core, Laravel&#39;s authentication facilities are made up of &quot;guards&quot; and &quot;providers&quot;. Guards define how users are authenticated for each request. For example, Laravel ships with a session guard which maintains state using session storage and cookies. Providers define how users are retrieved from your persistent storage. Laravel ships with support for retrieving users using Eloquent and the database query builder. However, you are free to define additional providers as needed for your application. Don&#39;t worry if this all sounds confusing now! Many applications will never need to modify the default authentication configuration.</p>', '9f22756780a5fda2d472aed36dc9666a.jpg', NULL, 1, 1, 1, '2019-07-18 12:47:23', '2019-07-31 07:57:31'),
(134, 'aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.', 'aut-debitis-dolores-earum-illo-iste-per-3107191058', '<p>aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.</p>', '<p>aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.aut debitis dolores earum illo iste, perspiciatis praesentium quaerat quos similique. Eum harum ipsum nulla repellat.</p>', 'd5bbeb942d7debbc8acd5ed9bbd2307e.jpg', NULL, 1, 1, 2, '2019-07-18 13:08:51', '2019-07-31 07:58:07'),
(135, 'regwfvrgrge', 'regwfvrgrge-3107191100', '<p>wegewsrfgvawrgv</p>', '<p>ergerversgv</p>', '0d0e477804d9967f5c2894a9dba36395.jpg', NULL, 1, 4, 1, '2019-07-18 15:14:33', '2019-07-31 08:00:00'),
(136, 'нертвенрт', 'nertvenrt-3107191101', '<p>етнвнтент</p>', '<p>етнетенент</p>', NULL, NULL, 1, 4, 1, '2019-07-18 15:15:53', '2019-07-31 13:44:49'),
(137, 'vbbvedsb', 'vbbvedsb-1807191823', 'btedrtbbtstdrebs', 'tbrdtbsrdtbstrb', NULL, NULL, 0, NULL, 1, '2019-07-18 15:23:29', '2019-07-18 15:23:29'),
(138, 'yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув', 'yntfyhtyfntenaptae-edbs-fdesa-fedf-u-v-1807191824', 'yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув', 'yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув yntfyhtyfnтенаптае  edbs  fdesa fedf у ваув', NULL, NULL, 1, NULL, 1, '2019-07-18 15:24:08', '2019-07-18 15:24:08'),
(139, 'р', 'r-1807192021', NULL, 'р', NULL, NULL, 0, NULL, 1, '2019-07-18 17:21:19', '2019-07-18 17:21:19'),
(140, 'g', 'g-1807192023', NULL, 'g', NULL, NULL, 1, NULL, 5, '2019-07-18 17:23:47', '2019-07-18 17:23:47'),
(141, 'b', 'b-1807192024', NULL, 'b', NULL, NULL, 0, NULL, 1, '2019-07-18 17:24:26', '2019-07-18 17:24:26'),
(142, 'Ирина запись', 'irina-zapis-2007191708', '<p>тен6кнгт&nbsp;</p>', '<p>тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;тен6кнгт&nbsp;</p>', NULL, NULL, 0, NULL, 2, '2019-07-20 14:08:27', '2019-07-20 14:08:27'),
(143, 'Первая', 'pervaya-2007191709', '<p>уфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку к</p>', '<p>уфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку куфим ergvb уми ум м к ку к</p>', NULL, NULL, 0, NULL, 2, '2019-07-20 14:09:46', '2019-07-20 14:09:46'),
(144, 'gtbe be  beyh yy', 'gtbe-be-beyh-yy-2007191746', '<p>gtbe be &nbsp;beyh yygtbe be &nbsp;beyh yy</p>', '<p>gtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yygtbe be &nbsp;beyh yy</p>', NULL, NULL, 0, 1, 1, '2019-07-20 14:46:47', '2019-07-30 12:09:38'),
(145, 'Недокументированный', 'nedokumentirovannyy-3007191841', NULL, '<p>едокументированный параметр, в коде написано &laquo;Генерирует вложенный класс контроллера ресурсов&raquo;, но мне не удалось сгенерировать контроллер таким образом. Вероятно, работа над этим параметром еще в процессе.</p>', 'e8586c416e33886f9f0ce97de88945f5.jpg', NULL, 0, 3, 2, '2019-07-30 15:41:00', '2019-07-30 15:50:31'),
(146, 'Недокумент', 'nedokument-3007191842', '<p>Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;</p>', '<p>Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;Недокументированный&nbsp;</p>', 'default.jpg', NULL, 0, 2, 2, '2019-07-30 15:42:51', '2019-07-30 15:50:22'),
(147, 'Просто очень много текста...', 'prosto-ochen-mnogo-teksta-3007192017', '<p>Привет, мои замечательные! Сегодня таки выбрались к Вовиной маме где есть нормальный интернет и могу написать тот огромный пост о котором говорила ранее, но начнем по-порядку.</p>', '<p>Привет, мои замечательные! Сегодня таки выбрались к Вовиной маме где есть нормальный интернет и могу написать тот огромный пост о котором говорила ранее, но начнем по-порядку. Вернулись в Минск в прошлый понедельник рано утром. Встретил Минск нас ледяным ветром, снегом и....отсутствием жилья, но несмотря на все это, мы в буквальном смысле слова готовы были целовать землю минскую, потому-что за всю эту поездку мы поняли совершенно точно и определенно &mdash; лучше Беларуси может быть только Беларусь и это я говорю, как человек, который пожить успел в Европе, причем не на правах эмигранта, и по России покататься и по миру в целом... Итак,понедельник. Минск. Утро. Вещи оставили в камере хранения и побрели в ближайшее кафе с услугой wi-fi дабы начать поиски жилья. Да-да, за 1,5 месяца странствий нашу квартиру решили больше не сдавать, но нас предупредить как-то забыли....ну ладно, это уже в прошлом. День сумасшедших поисков дал результат и к вечеру мы нашли чудесную квартиру, предварительно охерев от того, как вырос ценних на жилье. На следующий день собрали все вещи в старой квартире и переехали за 5 часов...я все еще как в тумане и просто ума не приложу, КАК мы смогли все собрать и за такой короткий срок перевести, но мы это сделали. ... а сейчас постараюсь собрать все свои мысли и с чувством, с толком, с расстановкой рассказать о наших скитаниях, путешествиях и впечатлениях за этот месяц...</p>', 'default.jpg', NULL, 1, NULL, 2, '2019-07-30 17:17:41', '2019-07-30 17:17:41'),
(148, 'Просто очень много текста2', 'prosto-ochen-mnogo-teksta2-3007192018', '<p>Привет, мои замечательные! Сегодня таки выбрались к Вовиной маме где есть нормальный интернет и могу написать тот огромный пост о котором говорила ранее, но начнем по-порядку.</p>', '<p>Привет, мои замечательные! Сегодня таки выбрались к Вовиной маме где есть нормальный интернет и могу написать тот огромный пост о котором говорила ранее, но начнем по-порядку. Вернулись в Минск в прошлый понедельник рано утром. Встретил Минск нас ледяным ветром, снегом и....отсутствием жилья, но несмотря на все это, мы в буквальном смысле слова готовы были целовать землю минскую, потому-что за всю эту поездку мы поняли совершенно точно и определенно &mdash; лучше Беларуси может быть только Беларусь и это я говорю, как человек, который пожить успел в Европе, причем не на правах эмигранта, и по России покататься и по миру в целом... Итак,понедельник. Минск. Утро. Вещи оставили в камере хранения и побрели в ближайшее кафе с услугой wi-fi дабы начать поиски жилья. Да-да, за 1,5 месяца странствий нашу квартиру решили больше не сдавать, но нас предупредить как-то забыли....ну ладно, это уже в прошлом. День сумасшедших поисков дал результат и к вечеру мы нашли чудесную квартиру, предварительно охерев от того, как вырос ценних на жилье. На следующий день собрали все вещи в старой квартире и переехали за 5 часов...я все еще как в тумане и просто ума не приложу, КАК мы смогли все собрать и за такой короткий срок перевести, но мы это сделали. ... а сейчас постараюсь собрать все свои мысли и с чувством, с толком, с расстановкой рассказать о наших скитаниях, путешествиях и впечатлениях за этот месяц...</p>', 'default.jpg', NULL, 1, 2, 2, '2019-07-30 17:18:03', '2019-07-31 15:13:07'),
(149, 'Ирина запись', 'irina-zapis-3007192211', NULL, '<p>Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;Паскудрявенко&nbsp;</p>', '95c56aad3ac8a894f8501c56b3be6389.jpg', NULL, 1, NULL, 1, '2019-07-30 19:11:42', '2019-07-31 14:48:36');

-- --------------------------------------------------------

--
-- Структура таблицы `article_category`
--

CREATE TABLE `article_category` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `parent_id`, `published`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(17, 'Гостиницы', 'lyzhi-1407191124', 0, 1, NULL, NULL, '2019-07-14 08:24:55', '2019-07-31 16:06:18'),
(20, 'частный сектор', 'yadernaya-fizika-1407191128', 0, 1, NULL, NULL, '2019-07-14 08:28:23', '2019-07-31 16:06:43'),
(21, 'аппартаменты', 'obrazovanie-1407191128', 0, 1, NULL, NULL, '2019-07-14 08:28:43', '2019-07-31 16:07:01'),
(31, 'Ведьмы и оборотни', 'vedmy-i-oborotni-3007192110', 0, 1, NULL, NULL, '2019-07-30 18:10:33', '2019-07-30 18:17:59'),
(32, 'квартиры', 'snoubord-3007192110', 0, 1, NULL, NULL, '2019-07-30 18:10:48', '2019-07-31 16:09:57'),
(33, 'Особняки', 'remont-snoubordov-3007192111', 0, 1, NULL, NULL, '2019-07-30 18:11:07', '2019-07-31 16:10:10'),
(34, 'Дорогие', 'dorogie-3107191910', 17, 1, NULL, NULL, '2019-07-31 16:10:32', '2019-07-31 16:13:33'),
(35, 'Подешевле', 'podeshevle-3107191910', 17, 1, NULL, NULL, '2019-07-31 16:10:46', '2019-07-31 16:13:41'),
(36, 'VIP', 'vip-3107191911', 34, 1, NULL, NULL, '2019-07-31 16:11:37', '2019-07-31 16:13:47');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryables`
--

CREATE TABLE `categoryables` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `categoryable_id` int(11) NOT NULL,
  `categoryable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryables`
--

INSERT INTO `categoryables` (`id`, `category_id`, `categoryable_id`, `categoryable_type`) VALUES
(48, 24, 137, 'App\\Article'),
(49, 27, 139, 'App\\Article'),
(50, 17, 143, 'App\\Article'),
(51, 28, 144, 'App\\Article'),
(52, 17, 145, 'App\\Article'),
(53, 17, 147, 'App\\Article'),
(54, 25, 147, 'App\\Article'),
(55, 26, 147, 'App\\Article'),
(56, 27, 147, 'App\\Article'),
(57, 25, 147, 'App\\Article'),
(58, 26, 147, 'App\\Article'),
(59, 27, 147, 'App\\Article'),
(60, 26, 147, 'App\\Article'),
(61, 27, 147, 'App\\Article'),
(62, 27, 147, 'App\\Article'),
(63, 17, 148, 'App\\Article'),
(64, 25, 148, 'App\\Article'),
(65, 26, 148, 'App\\Article'),
(66, 27, 148, 'App\\Article'),
(67, 25, 148, 'App\\Article'),
(68, 26, 148, 'App\\Article'),
(69, 27, 148, 'App\\Article'),
(70, 26, 148, 'App\\Article'),
(71, 27, 148, 'App\\Article'),
(72, 27, 148, 'App\\Article'),
(80, 17, 131, 'App\\Article'),
(81, 21, 132, 'App\\Article'),
(82, 33, 133, 'App\\Article'),
(83, 20, 134, 'App\\Article'),
(84, 21, 134, 'App\\Article'),
(85, 31, 134, 'App\\Article'),
(86, 31, 135, 'App\\Article'),
(88, 32, 136, 'App\\Article'),
(89, 32, 149, 'App\\Article'),
(90, 33, 149, 'App\\Article'),
(91, 20, 149, 'App\\Article'),
(173, 21, 126, 'App\\Article');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `article_id`, `created_at`, `updated_at`) VALUES
(20, 'Просто жить', '1', '136', '2019-07-31 08:01:18', '2019-07-31 08:01:18'),
(21, 'edrsfvbewasv', '1', '126', '2019-07-31 10:16:08', '2019-07-31 10:16:08');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `like`
--

CREATE TABLE `like` (
  `id` int(10) UNSIGNED NOT NULL,
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likeable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type_id` enum('like','dislike') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'like',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `like_counter`
--

CREATE TABLE `like_counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likeable_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` enum('like','dislike') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'like',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2018_01_01_000000_create_action_events_table', 1),
(9, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(10, '2019_07_11_130915_create_categories_table', 1),
(19, '2019_07_11_135215_create_roles_table', 2),
(20, '2019_07_11_135650_role_user', 2),
(23, '2019_07_12_212304_create_articles_table', 3),
(24, '2019_07_13_145852_create_article_category_table', 3),
(27, '2019_07_13_234716_categoryable', 4),
(28, '2019_07_17_181252_add_mobile_no_columns_to_users_table', 5),
(29, '2019_07_17_201218_create_images_table', 6),
(30, '2019_07_19_164143_create_comments_table', 6),
(31, '2019_07_19_195330_create_answers_table', 7),
(35, '2016_09_02_153301_create_like_table', 8),
(36, '2016_09_02_163301_create_like_counter_table', 8),
(37, '2018_07_10_000000_create_reactions_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reactions`
--

CREATE TABLE `reactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reactable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reactable_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reactions`
--

INSERT INTO `reactions` (`id`, `user_id`, `reactable_type`, `reactable_id`, `type`, `created_at`, `updated_at`) VALUES
(168, 1, 'App\\Article', 125, 'like', '2019-07-30 19:27:12', '2019-07-30 19:27:12'),
(169, 1, 'App\\Article', 132, 'like', '2019-07-31 07:56:56', '2019-07-31 07:56:56'),
(170, 1, 'App\\Article', 133, 'like', '2019-07-31 07:57:21', '2019-07-31 07:57:21'),
(171, 1, 'App\\Article', 134, 'like', '2019-07-31 07:57:47', '2019-07-31 07:57:47'),
(172, 1, 'App\\Article', 135, 'like', '2019-07-31 07:59:49', '2019-07-31 07:59:49'),
(173, 1, 'App\\Article', 136, 'like', '2019-07-31 08:01:27', '2019-07-31 08:01:27'),
(174, 1, 'App\\Article', 129, 'like', '2019-07-31 08:44:26', '2019-07-31 08:44:26'),
(175, 1, 'App\\Article', 126, 'like', '2019-07-31 08:57:01', '2019-07-31 08:57:01'),
(176, 1, 'App\\Article', 128, 'like', '2019-07-31 13:45:23', '2019-07-31 13:45:23'),
(177, 1, 'App\\Article', 148, 'like', '2019-07-31 15:13:10', '2019-07-31 15:13:10'),
(178, 2, 'App\\Article', 125, 'like', '2019-07-31 17:42:18', '2019-07-31 17:42:18'),
(179, 3, 'App\\Article', 125, 'like', '2019-07-31 17:53:05', '2019-07-31 17:53:05'),
(180, 2, 'App\\Article', 126, 'like', '2019-08-01 14:15:05', '2019-08-01 14:15:05'),
(181, 2, 'App\\Article', 128, 'like', '2019-08-01 14:23:09', '2019-08-01 14:23:09');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `permission`) VALUES
(1, 'admin', NULL),
(2, 'author', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(2, 2, 2),
(3, 3, 3),
(5, 5, 2),
(6, 6, 2),
(15, 21, 3),
(16, 22, 3),
(17, 23, 3),
(18, 24, 3),
(19, 25, 3),
(20, 26, 3),
(21, 33, 3),
(22, 34, 3),
(23, 35, 3),
(25, 37, 3),
(26, 38, 3),
(27, 39, 3),
(28, 40, 3),
(29, 41, 3),
(30, 42, 2),
(31, 43, 2),
(32, 44, 2),
(33, 45, 2),
(34, 15, 2),
(38, 36, 2),
(41, 1, 1),
(42, 20, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Денис Викторович', 'eglobus080@gmail.com', NULL, '$2y$10$cSzmqeRixmgNyA0kSv2NTe3mWZodW7TsH772TZsa6BmAIOrQbv7qW', NULL, '2019-07-11 10:14:12', '2019-07-31 17:09:54', '3ca474f8b64bb0820307b17fc20943b2.jpg'),
(2, 'Денис', 'denishm116@yandex.ru', NULL, '$2y$10$Zw2J6woF/V8/G9DmWURoBeU1Q6AWDAS9/7x/Kpey8Dybw9BzhO106', NULL, '2019-07-11 11:13:12', '2019-07-19 09:13:32', 'default.jpg'),
(3, 'Zdohler', 'zdohler@gmail.com', NULL, '$2y$10$lqelSj2kpezJdUIFMYzKKeNv2EfVqRRBCxl6S6Mf2nFNXPLdCwxyu', NULL, '2019-07-11 11:13:48', '2019-07-19 09:13:36', 'default.jpg'),
(5, 'hj.', 'hj@yandex.ru', NULL, '$2y$10$d7uuM.vgoBbXI9HMELy5YOPy4seFSE7kmChDrs9RSKgzbGUtlIF5.', NULL, '2019-07-17 16:18:31', '2019-07-19 09:13:39', 'default.jpg'),
(6, 'kolya', 'kolya@yandex.ru', NULL, '$2y$10$o6zSKvvhYKZQBPoxQH7xSe8jfFcDzOfxnqFUZrcF44S0lE23x6rQ.', NULL, '2019-07-17 16:22:45', '2019-07-19 09:13:43', 'default.jpg'),
(15, 'gerdgedr', 'denishmwg116@yandex.ru', NULL, '$2y$10$2GljrB8VvNvDLKdron8fC.KUQR55w5hS2IGI.t.9exPYQOJAKWD8q', NULL, '2019-07-17 20:09:39', '2019-07-19 11:26:59', '93e76313db0fb61b44f745e8221e63b9.jpg'),
(20, 'qqq', 'admin@gmail.com', NULL, '$2y$10$/1F8UnEyz8.SMnMhw3X7y.DvU5NFypxB2oqw8knzLFLlKFT5RbiPG', NULL, '2019-07-18 08:10:48', '2019-07-31 17:10:46', 'default.jpg'),
(21, 'qqqwww', 'qqqwww@gmail.com', NULL, '$2y$10$AssTJqO0GLOwy57kxq2Qs.WxObbjrNHKcppwJ43uKRjwUIp3jJDSu', NULL, '2019-07-18 08:13:14', '2019-07-18 08:13:14', '0759d200edd06080632a28dcd5167dc6.jpg'),
(22, 'www', 'www@gmail.com', NULL, '$2y$10$2TaWI1gtloh6geAMduLCc.HNwSJej9EnE2sD.viTwkre8TZL1Bx6O', NULL, '2019-07-18 08:15:32', '2019-07-18 08:15:32', '4027b672d652b33e5acfabea953dad26.jpg'),
(23, 'wwwqqq', 'wwwqqq@gmail.com', NULL, '$2y$10$t/DNKh.8IHEQPdcQ2pwJz.YBlqFkmbtp69G2iWoMlJg0aMOmWS1fi', NULL, '2019-07-18 08:16:28', '2019-07-18 08:16:28', 'ba1f8d63b66a3255ed85af461eb59941.jpg'),
(24, 'zzz', 'zzz@gmail.com', NULL, '$2y$10$lLYvGM2HGamp6p2Kbyf29OPGGctv.s.D.RUGChyC65ad3YQnGV3sG', NULL, '2019-07-18 08:18:15', '2019-07-18 08:18:15', 'bdb4ef9310667140e2866aa24f4041a7.jpg'),
(25, 'zzz555', 'zzz555@gmail.com', NULL, '$2y$10$GAQXs9mNCW4zosxKJzPoHeKKA.Yrbf6j98qvAWVOwlzHEwSEm3PhC', NULL, '2019-07-18 08:26:23', '2019-07-18 08:26:23', '97c494fea3d580cb23d608e3f1bd4788.jpg'),
(26, 'zzz555666', 'zzz555666@gmail.com', NULL, '$2y$10$no9sQxp/txsKt9JWpPBNQ.LHiQfRfv5TjM9GVaMDXe03cvxpUpIqe', NULL, '2019-07-18 08:30:39', '2019-07-18 08:30:39', 'f3a282c962f0f2397097210c423e5049.jpg'),
(33, 'ggg', 'eglobus080@gmail.comg', NULL, '$2y$10$XMyNO9nzqze8G0Hf2Wbxi.XTC43UgIxs78wBqBheDmCf.KEKqBBhq', NULL, '2019-07-18 08:47:45', '2019-07-18 08:47:45', '13504e56a42ab725327535a7e9398149.jpg'),
(34, 'mmm', 'eglobums080@gmail.com', NULL, '$2y$10$kQa.Idrpw9RKutNJ23YUsOuJRheX4ltZV8UZMRuKpsCNj1IeI2kCS', NULL, '2019-07-18 08:48:50', '2019-07-18 08:48:50', 'd29ccab601bc7bffe5792c0e9ff0151d.jpg'),
(35, 'iii', 'eglobusiii080@gmail.com', NULL, '$2y$10$cBu/Bb9OBIR2cIaQklU4puiBAOxDYQO4SNXTbRb8fbY2AxGrP4An.', NULL, '2019-07-18 08:49:51', '2019-07-18 08:49:51', 'ebdca90a0964c51b71af52d0dcfb33f4.jpg'),
(36, 'jjj', 'eglobjus080@gmail.com', NULL, '$2y$10$Gdtdy0FniRk4sQGm8A.YMePHM1GbHb4xRtL82Jq1eOxAUC4H1cFpy', NULL, '2019-07-18 08:55:16', '2019-07-19 12:44:32', 'default.jpg'),
(37, 'ppp', 'eglobus0p80@gmail.com', NULL, '$2y$10$xnTk/p574wWElqtSbuzn7OkaVCuZUNVdxUbqKqxGpB1Lan7t5PN0i', NULL, '2019-07-18 08:56:22', '2019-07-18 08:56:22', '1722aa4e5eef885433e22c5d553d85fd.jpg'),
(38, 'ooo', 'eglobus080@gmail.como', NULL, '$2y$10$LlMxGvYc300vUamEdSd7dO8b6GUJQDrFlkOMOWStPkqLAC9yWmlVu', NULL, '2019-07-18 09:21:01', '2019-07-18 09:21:01', 'f28779dc783b079bb98edebac5a45a51.jpg'),
(39, 'ттт222', 'eglobus080@gmail.com2', NULL, '$2y$10$DQ2c510IarVSExL6cIT2gu9lLaiHJPPDeMoi8ei7NjvvY6uy5EzrG', NULL, '2019-07-18 10:09:40', '2019-07-19 09:11:51', 'default.jpg'),
(40, 'vbvb', 'eglobvbus080@gmail.com', NULL, '$2y$10$t5EnRsK27JRR2s853afn8egdWxDKQ1.4056eBdTwOwR5mY43n/qLq', NULL, '2019-07-18 10:10:29', '2019-07-18 10:10:29', 'default.jpg'),
(41, 'rere', 'eglobus080@gmail.comre', NULL, '$2y$10$74Ta7Z.5SYKBnU2tGdBhsO.IWqOaFna55b3Nx59bgyppqu6qwvrNy', NULL, '2019-07-18 10:11:27', '2019-07-18 10:11:27', 'b3274108839453cf4ccb656897276415.jpg'),
(42, 'вава', 'denishm111116@yandex.ru', NULL, '$2y$10$z7ltXbb8tmHwXBKIWKo7/.N/LqR4Sev0iFirGwUQW2sfPV0iZlPt2', NULL, '2019-07-19 07:33:55', '2019-07-19 07:33:55', 'aa73487e67a219d1d075a70fc11172c3.jpg'),
(43, 'мавым', 'denishm113336@yandex.ru', NULL, '$2y$10$QjzHow3SLhWwFnq1yoYZXukslH9J.WeOxC2ulsqHzOl8I2ItpNV9S', NULL, '2019-07-19 08:01:19', '2019-07-19 08:01:19', 'default.jpg'),
(44, 'zxzx', 'denishm11zxzx6@yandex.ru', NULL, '$2y$10$FY.gjJzO6M9b4kNa.0AnGefnOtwxtasT0UjwTrN1csFGWTKjtA3Y.', NULL, '2019-07-19 09:03:06', '2019-07-19 09:03:06', 'default.jpg'),
(45, '112212', 'denish111m111116@yandex.ru', NULL, '$2y$10$JaufSlFuhdhbUUt2xUNaM.Za4o0kS4lqGFrqH7pP14AW4FhIC66xO', NULL, '2019-07-19 09:03:41', '2019-07-19 09:03:41', '4a9d8241ec1910137d65212b4e726bc8.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Индексы таблицы `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `categoryables`
--
ALTER TABLE `categoryables`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `like_user_unique` (`likeable_id`,`likeable_type`,`user_id`),
  ADD KEY `like_likeable_type_likeable_id_index` (`likeable_type`,`likeable_id`),
  ADD KEY `like_user_id_index` (`user_id`);

--
-- Индексы таблицы `like_counter`
--
ALTER TABLE `like_counter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `like_counter_unique` (`likeable_id`,`likeable_type`,`type_id`),
  ADD KEY `like_counter_likeable_type_likeable_id_index` (`likeable_type`,`likeable_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `react_user_unique` (`reactable_type`,`reactable_id`,`user_id`),
  ADD KEY `reactions_reactable_type_reactable_id_index` (`reactable_type`,`reactable_id`),
  ADD KEY `reactions_user_id_index` (`user_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT для таблицы `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `categoryables`
--
ALTER TABLE `categoryables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `like`
--
ALTER TABLE `like`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `like_counter`
--
ALTER TABLE `like_counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
