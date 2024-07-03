-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2024 at 03:18 PM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gates`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) NOT NULL,
  `commentable_id` varchar(255) NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`, `likes`) VALUES
(1, 'Vrery Good.', '1', 'App\\Models\\Post', '2024-06-06 05:08:06', '2024-06-06 05:08:06', '23'),
(2, 'Very .', '1', 'App\\Models\\Post', '2024-06-06 05:09:02', '2024-06-06 05:09:02', '3'),
(3, 'Very very good.', '1', 'App\\Models\\Post', '2024-06-06 05:09:40', '2024-06-06 05:09:40', '15'),
(4, 'good.', '2', 'App\\Models\\Post', '2024-06-06 05:09:54', '2024-06-06 05:09:54', '56'),
(5, 'good good.', '2', 'App\\Models\\Post', '2024-06-06 05:10:02', '2024-06-06 05:10:02', '2'),
(6, 'Nice.', '3', 'App\\Models\\Post', '2024-06-06 05:10:18', '2024-06-06 05:10:18', '9'),
(7, 'same.', '3', 'App\\Models\\Post', '2024-06-06 05:10:24', '2024-06-06 05:10:24', '62'),
(8, 'Video good', '1', 'App\\Models\\Video', '2024-06-06 05:16:18', '2024-06-06 05:16:18', '8'),
(9, 'Video very good', '1', 'App\\Models\\Video', '2024-06-06 05:16:27', '2024-06-06 05:16:27', '17'),
(10, 'Nice', '2', 'App\\Models\\Video', '2024-06-06 05:16:44', '2024-06-06 05:16:44', '36'),
(11, 'Create more', '2', 'App\\Models\\Video', '2024-06-06 05:16:51', '2024-06-06 05:16:51', '27'),
(12, 'Do more', '2', 'App\\Models\\Video', '2024-06-06 05:16:57', '2024-06-06 05:16:57', '41'),
(13, 'Hiiii', '3', 'App\\Models\\Video', '2024-06-06 05:17:08', '2024-06-06 05:17:08', '1'),
(14, 'shgsh gsghshgsg gh', '2', 'App\\Models\\Video', NULL, NULL, '97'),
(15, 'dhdh dsh', '2', 'App\\Models\\Video', NULL, NULL, '1'),
(17, 'nbhjs jsh sjsg', '1', 'App\\Models\\Post', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'b7e5aaf6-e543-4800-8c95-2a48ee882ea6', 'database', 'default', '{\"uuid\":\"b7e5aaf6-e543-4800-8c95-2a48ee882ea6\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 'Exception: Failed Job in /home/lnv-20/gates/app/Jobs/SlowJob.php:30\nStack trace:\n#0 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SlowJob->handle()\n#1 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#3 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#4 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#5 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#6 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#7 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#8 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#9 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#10 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#11 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#12 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#13 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#14 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#15 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#17 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#18 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#19 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#20 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#23 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#24 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#25 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Console/Command.php(213): Illuminate\\Container\\Container->call()\n#26 /home/lnv-20/gates/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#27 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#28 /home/lnv-20/gates/vendor/symfony/console/Application.php(1047): Illuminate\\Console\\Command->run()\n#29 /home/lnv-20/gates/vendor/symfony/console/Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#30 /home/lnv-20/gates/vendor/symfony/console/Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#31 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(196): Symfony\\Component\\Console\\Application->run()\n#32 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle()\n#33 /home/lnv-20/gates/artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#34 {main}', '2024-06-10 01:36:38'),
(2, '3a607b84-8aa7-4f74-be05-8267e7914b61', 'database', 'default', '{\"uuid\":\"3a607b84-8aa7-4f74-be05-8267e7914b61\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 'Exception: Failed Job in /home/lnv-20/gates/app/Jobs/SlowJob.php:30\nStack trace:\n#0 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SlowJob->handle()\n#1 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#3 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#4 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#5 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#6 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#7 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#8 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#9 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#10 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#11 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#12 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#13 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#14 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#15 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#17 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#18 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#19 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#20 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#23 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#24 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#25 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Console/Command.php(213): Illuminate\\Container\\Container->call()\n#26 /home/lnv-20/gates/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#27 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#28 /home/lnv-20/gates/vendor/symfony/console/Application.php(1047): Illuminate\\Console\\Command->run()\n#29 /home/lnv-20/gates/vendor/symfony/console/Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#30 /home/lnv-20/gates/vendor/symfony/console/Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#31 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(196): Symfony\\Component\\Console\\Application->run()\n#32 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle()\n#33 /home/lnv-20/gates/artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#34 {main}', '2024-06-10 01:37:29'),
(3, '29d5ad03-a979-4c42-aad4-a47edb96fd09', 'database', 'default', '{\"uuid\":\"29d5ad03-a979-4c42-aad4-a47edb96fd09\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 'Exception: Failed Job in /home/lnv-20/gates/app/Jobs/SlowJob.php:31\nStack trace:\n#0 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SlowJob->handle()\n#1 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#3 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#4 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#5 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#6 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#7 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#8 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#9 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#10 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#11 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#12 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#13 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#14 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#15 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#17 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#18 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#19 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#20 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#23 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#24 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#25 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Console/Command.php(213): Illuminate\\Container\\Container->call()\n#26 /home/lnv-20/gates/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#27 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#28 /home/lnv-20/gates/vendor/symfony/console/Application.php(1047): Illuminate\\Console\\Command->run()\n#29 /home/lnv-20/gates/vendor/symfony/console/Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#30 /home/lnv-20/gates/vendor/symfony/console/Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#31 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(196): Symfony\\Component\\Console\\Application->run()\n#32 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle()\n#33 /home/lnv-20/gates/artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#34 {main}', '2024-06-10 01:41:48'),
(4, 'ad6bc2a7-e6fa-42d8-8fb3-01541828c058', 'database', 'default', '{\"uuid\":\"ad6bc2a7-e6fa-42d8-8fb3-01541828c058\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 'Exception: Failed Job in /home/lnv-20/gates/app/Jobs/SlowJob.php:31\nStack trace:\n#0 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SlowJob->handle()\n#1 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#3 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#4 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#5 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#6 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#7 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#8 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#9 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#10 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#11 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#12 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then()\n#13 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#14 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#15 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#17 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#18 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon()\n#19 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#20 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#23 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#24 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#25 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Console/Command.php(213): Illuminate\\Container\\Container->call()\n#26 /home/lnv-20/gates/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#27 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#28 /home/lnv-20/gates/vendor/symfony/console/Application.php(1047): Illuminate\\Console\\Command->run()\n#29 /home/lnv-20/gates/vendor/symfony/console/Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand()\n#30 /home/lnv-20/gates/vendor/symfony/console/Application.php(167): Symfony\\Component\\Console\\Application->doRun()\n#31 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(196): Symfony\\Component\\Console\\Application->run()\n#32 /home/lnv-20/gates/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle()\n#33 /home/lnv-20/gates/artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#34 {main}', '2024-06-10 01:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `imageable_id` varchar(255) NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_uploads`
--

CREATE TABLE `image_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_uploads`
--

INSERT INTO `image_uploads` (`id`, `file_path`, `created_at`, `updated_at`) VALUES
(2, 'images/btWTRaIF7xeCgHwXJ18hJqDl7UduLP939EyPuKwh.png', '2024-06-07 05:40:00', '2024-06-07 05:40:00'),
(4, 'image/GiNq4yg5kInhRIGoQkB7KxOZy2od6ibsDQUuY48O.png', '2024-06-07 05:47:42', '2024-06-10 07:38:34'),
(7, 'image/LnrmCLTdwBB7FG8I2mBFw57S6PK76DXkeBoiSvEZ.png', '2024-06-07 05:57:11', '2024-06-10 07:38:45'),
(21, 'images/naZOKXxPrp9CpsvTYqERdCPaBgPLLI0VVRkq61Mr.png', '2024-06-10 07:51:34', '2024-06-10 07:51:34'),
(22, 'images/E25UdMjnf6yCZYdRfGp9j30QHeftHuDEXrMHKwuA.png', '2024-06-10 07:51:38', '2024-06-10 07:51:38'),
(30, 'images/4FzgpwqnSeXUJGP6dmGHRaytFCyyyeuEFgn3unwI.png', '2024-06-10 08:07:18', '2024-06-10 08:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(11, 'default', '{\"uuid\":\"5d8b127c-d6c8-4bc9-9959-6bc04714b4a4\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 0, NULL, 1718005401, 1718005401),
(12, 'default', '{\"uuid\":\"4a77249d-eef5-4804-a00a-cea9da331a70\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 0, NULL, 1718007999, 1718007999),
(13, 'default', '{\"uuid\":\"871dd289-a4cf-4895-bb41-cc39bf1a9949\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 0, NULL, 1718024844, 1718024844),
(14, 'default', '{\"uuid\":\"fea37592-4b22-484f-82a1-6c1aad494f30\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 0, NULL, 1718083148, 1718083148),
(15, 'default', '{\"uuid\":\"e746a6d8-9629-451b-8515-2e63a41fc34f\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 0, NULL, 1718358076, 1718358076),
(16, 'default', '{\"uuid\":\"b0ca4ef9-b690-46f5-bb5c-9eae6a4ac2f0\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 0, NULL, 1718358078, 1718358078),
(17, 'default', '{\"uuid\":\"d6a5cb3a-fcca-4dab-8292-283e74abae8d\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 0, NULL, 1718358105, 1718358105),
(18, 'default', '{\"uuid\":\"e50e181b-5293-4bca-b5fb-9fe9cb57b5c1\",\"displayName\":\"App\\\\Jobs\\\\SlowJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SlowJob\",\"command\":\"O:16:\\\"App\\\\Jobs\\\\SlowJob\\\":0:{}\"}}', 0, NULL, 1718358163, 1718358163);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_06_054955_create_images_table', 2),
(5, '2024_06_06_055048_create_posts_table', 2),
(6, '2024_06_06_102151_create_videos_table', 2),
(7, '2024_06_06_102203_create_comments_table', 2),
(8, '2024_06_06_110718_add_likes_to_comments_table', 3),
(9, '2024_06_06_124943_create_tags_table', 4),
(10, '2024_06_06_131735_create_taggables_table', 4),
(11, '2024_06_07_102618_create_image_uploads_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('aniket.sinuq@gmail.com', '$2y$12$gkD5wBN/HK/5IMJcidVpNOaYjUCV/oUn0fvzn.SJe.cnwxVXLozyO', '2024-06-10 03:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Post Image 1', 'Show the form for creating a new resource.', '2024-06-06 05:08:06', '2024-06-06 05:08:06'),
(2, 'Post 2', 'Show the form for creating a new resource.', '2024-06-06 05:08:31', '2024-06-06 05:08:31'),
(3, 'Post 3', 'Show the form for creating a new resource.', '2024-06-06 05:08:39', '2024-06-06 05:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DetfznkTOH9VUGIcHvkhWhNxatz5VyDmmjoUjjWt', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkRrdTlZU1BKakxtd0RLV2x1U0tBVVNsb0M5WDE2Q2tWdHNLOHh3ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS91cGxvYWQvZG93bmxvYWQvMjEiO319', 1718358294);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) DEFAULT NULL,
  `taggable_id` bigint(20) DEFAULT NULL,
  `taggable_type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`) VALUES
(1, 2, 'App\\Models\\Post'),
(3, 2, 'App\\Models\\Post'),
(2, 1, 'App\\Models\\Post'),
(3, 1, 'App\\Models\\Post'),
(2, 3, 'App\\Models\\Post'),
(1, 3, 'App\\Models\\Post'),
(3, 3, 'App\\Models\\Post'),
(1, 3, 'App\\Models\\Video'),
(2, 3, 'App\\Models\\Video'),
(1, 2, 'App\\Models\\Video'),
(3, 2, 'App\\Models\\Video'),
(3, 1, 'App\\Models\\Video');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tags` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'Bollywood', '2024-06-06 08:07:25', '2024-06-06 08:07:25'),
(2, 'Dummy', '2024-06-06 08:08:02', '2024-06-06 08:08:02'),
(3, 'Hollywod', '2024-06-06 08:08:12', '2024-06-06 08:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user','editor') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ANiket', 'aniket.sinuq@gmail.com', NULL, '$2y$12$JW8aOI.WFJqA70j6X/IxmuyxT2N9eihv7cIxDio7tv5TTW1rX2IRO', 'admin', NULL, '2024-06-10 02:56:28', '2024-06-10 02:56:28'),
(2, 'demo', 'demo123@gmail.com', NULL, '$2y$12$dey20.yuBVnokIRs5dc20.jC3J3w/QjrYPRaUre9YLBKwqVxdU.Zi', 'admin', NULL, '2024-06-14 04:12:38', '2024-06-14 04:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Video One', '/video/demo1.mp4', '2024-06-06 05:13:15', '2024-06-06 05:13:15'),
(2, 'Video Two', '/video/demo2.mp4', '2024-06-06 05:13:37', '2024-06-06 05:13:37'),
(3, 'Video THree', '/video/demo3.mp4', '2024-06-06 05:14:13', '2024-06-06 05:14:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_uploads`
--
ALTER TABLE `image_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_uploads`
--
ALTER TABLE `image_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
