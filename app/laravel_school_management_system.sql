-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 03, 2022 at 02:41 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_school_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE IF NOT EXISTS `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classroom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `classroom_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5 / A', '2022-11-02 19:00:00', '2022-11-02 19:00:00', NULL),
(2, '11 / A', '2022-11-02 19:00:04', '2022-11-02 19:10:12', '2022-11-02 19:10:12'),
(3, '6 / B', '2022-11-02 19:00:12', '2022-11-02 19:10:18', NULL),
(4, '7 / C', '2022-11-02 19:00:19', '2022-11-02 19:00:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '999f33f8-56ce-45e4-9d64-b40a3cc14f28', 'database', 'default', '{\"uuid\":\"999f33f8-56ce-45e4-9d64-b40a3cc14f28\",\"displayName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"command\":\"O:37:\\\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\\\":1:{s:7:\\\"\\u0000*\\u0000data\\\";a:4:{s:12:\\\"timetable_id\\\";s:1:\\\"4\\\";s:10:\\\"student_id\\\";s:1:\\\"5\\\";s:7:\\\"midterm\\\";s:2:\\\"65\\\";s:5:\\\"final\\\";s:2:\\\"75\\\";}}\"}}', 'ErrorException: Attempt to read property \"timetable_id\" on array in /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php:37\nStack trace:\n#0 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/HandleExceptions.php(259): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#1 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php(37): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#2 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateScoresFromTimetableJob->handle()\n#3 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#9 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#10 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\UpdateScoresFromTimetableJob), false)\n#12 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#13 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#14 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#16 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(150): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(134): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(178): Illuminate\\Container\\Container->call(Array)\n#28 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Command/Command.php(308): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(148): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2022-11-02 22:38:29'),
(2, '94dfdf2e-953c-4075-85ec-4f2d9bc9b9ec', 'database', 'default', '{\"uuid\":\"94dfdf2e-953c-4075-85ec-4f2d9bc9b9ec\",\"displayName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"command\":\"O:37:\\\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\\\":1:{s:7:\\\"\\u0000*\\u0000data\\\";a:4:{s:12:\\\"timetable_id\\\";s:1:\\\"4\\\";s:10:\\\"student_id\\\";s:1:\\\"6\\\";s:7:\\\"midterm\\\";s:2:\\\"85\\\";s:5:\\\"final\\\";s:2:\\\"95\\\";}}\"}}', 'ErrorException: Attempt to read property \"timetable_id\" on array in /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php:37\nStack trace:\n#0 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/HandleExceptions.php(259): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#1 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php(37): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#2 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateScoresFromTimetableJob->handle()\n#3 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#9 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#10 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\UpdateScoresFromTimetableJob), false)\n#12 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#13 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#14 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#16 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(150): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(134): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(178): Illuminate\\Container\\Container->call(Array)\n#28 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Command/Command.php(308): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(148): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2022-11-02 22:38:29'),
(3, 'df1df5a8-f1c9-4d14-8bbd-d8f4d215a5e1', 'database', 'default', '{\"uuid\":\"df1df5a8-f1c9-4d14-8bbd-d8f4d215a5e1\",\"displayName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"command\":\"O:37:\\\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\\\":1:{s:7:\\\"\\u0000*\\u0000data\\\";a:4:{s:12:\\\"timetable_id\\\";s:1:\\\"4\\\";s:10:\\\"student_id\\\";s:1:\\\"6\\\";s:7:\\\"midterm\\\";s:2:\\\"35\\\";s:5:\\\"final\\\";s:2:\\\"55\\\";}}\"}}', 'ErrorException: Attempt to read property \"timetable_id\" on array in /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php:37\nStack trace:\n#0 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/HandleExceptions.php(259): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#1 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php(37): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#2 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateScoresFromTimetableJob->handle()\n#3 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#9 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#10 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\UpdateScoresFromTimetableJob), false)\n#12 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#13 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#14 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#16 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(150): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(134): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(178): Illuminate\\Container\\Container->call(Array)\n#28 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Command/Command.php(308): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(148): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2022-11-02 22:41:03'),
(4, 'ffca915f-18bf-4c94-ba02-35b2d9235125', 'database', 'default', '{\"uuid\":\"ffca915f-18bf-4c94-ba02-35b2d9235125\",\"displayName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"command\":\"O:37:\\\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\\\":1:{s:7:\\\"\\u0000*\\u0000data\\\";a:4:{s:12:\\\"timetable_id\\\";s:1:\\\"4\\\";s:10:\\\"student_id\\\";s:1:\\\"5\\\";s:7:\\\"midterm\\\";s:2:\\\"15\\\";s:5:\\\"final\\\";s:2:\\\"25\\\";}}\"}}', 'ErrorException: Attempt to read property \"timetable_id\" on array in /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php:37\nStack trace:\n#0 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/HandleExceptions.php(259): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#1 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php(37): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#2 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateScoresFromTimetableJob->handle()\n#3 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#9 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#10 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\UpdateScoresFromTimetableJob), false)\n#12 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#13 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#14 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#16 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(150): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(134): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(178): Illuminate\\Container\\Container->call(Array)\n#28 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Command/Command.php(308): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(148): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2022-11-02 22:41:15'),
(5, '10a1b394-9e58-4b5a-9b0d-44ae626b63d3', 'database', 'default', '{\"uuid\":\"10a1b394-9e58-4b5a-9b0d-44ae626b63d3\",\"displayName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"command\":\"O:37:\\\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\\\":1:{s:7:\\\"\\u0000*\\u0000data\\\";a:4:{s:12:\\\"timetable_id\\\";s:1:\\\"4\\\";s:10:\\\"student_id\\\";s:1:\\\"6\\\";s:7:\\\"midterm\\\";s:2:\\\"35\\\";s:5:\\\"final\\\";s:2:\\\"55\\\";}}\"}}', 'ErrorException: Attempt to read property \"timetable_id\" on array in /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php:37\nStack trace:\n#0 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/HandleExceptions.php(259): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#1 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/app/Jobs/UpdateScoresFromTimetableJob.php(37): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'/Users/ceyhunce...\', 37)\n#2 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateScoresFromTimetableJob->handle()\n#3 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#9 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#10 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\UpdateScoresFromTimetableJob), false)\n#12 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#13 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#14 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\UpdateScoresFromTimetableJob))\n#16 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(150): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(134): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(178): Illuminate\\Container\\Container->call(Array)\n#28 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Command/Command.php(308): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(148): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2022-11-02 22:41:15');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(6, 'a87b7687-c872-445e-9707-2676ae2fc9d1', 'database', 'default', '{\"uuid\":\"a87b7687-c872-445e-9707-2676ae2fc9d1\",\"displayName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\",\"command\":\"O:37:\\\"App\\\\Jobs\\\\UpdateScoresFromTimetableJob\\\":1:{s:7:\\\"\\u0000*\\u0000data\\\";a:4:{s:12:\\\"timetable_id\\\";s:1:\\\"4\\\";s:10:\\\"student_id\\\";s:1:\\\"5\\\";s:7:\\\"midterm\\\";s:2:\\\"15\\\";s:5:\\\"final\\\";s:2:\\\"25\\\";}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\UpdateScoresFromTimetableJob has been attempted too many times or run too long. The job may have previously timed out. in /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:755\nStack trace:\n#0 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(505): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(415): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(150): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(134): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(178): Illuminate\\Container\\Container->call(Array)\n#12 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Command/Command.php(308): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Command.php(148): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 /Users/ceyhuncelik/Desktop/GitHub/laravel-school-management-system/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2022-11-02 22:41:21');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `lesson_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Türkçe', '2022-11-02 17:51:41', '2022-11-02 17:51:41', NULL),
(2, 'Matematik', '2022-11-02 17:51:49', '2022-11-02 17:51:49', NULL),
(3, 'Sosyal Bilgiler', '2022-11-02 17:51:56', '2022-11-02 17:51:56', NULL),
(4, 'Hayat Bilgisi', '2022-11-02 17:52:02', '2022-11-02 17:52:02', NULL),
(5, 'Müzik', '2022-11-02 17:52:07', '2022-11-02 17:56:02', NULL),
(6, 'Test', '2022-11-02 17:52:11', '2022-11-02 17:56:23', '2022-11-02 17:56:23'),
(7, 'Beden Eğitimi', '2022-11-02 17:52:15', '2022-11-02 17:52:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_000000_create_users_table', 2),
(6, '2022_11_02_193932_create_roles_table', 3),
(8, '2022_11_02_201922_create_lessons_table', 4),
(9, '2022_11_02_205739_create_teachers_table', 5),
(10, '2022_11_02_214546_create_classrooms_table', 6),
(11, '2022_11_02_221116_create_timetables_table', 7),
(12, '2022_11_02_224743_create_jobs_table', 8),
(13, '2022_11_02_230116_create_students_table', 9),
(14, '2022_11_03_004943_create_scores_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timetable_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `midterm` int(11) DEFAULT NULL,
  `final` int(11) DEFAULT NULL,
  `result` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `timetable_id`, `student_id`, `midterm`, `final`, `result`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 4, 5, 25, 85, NULL, '2022-11-02 22:31:24', '2022-11-02 23:38:52', NULL),
(6, 4, 6, 469, 568, NULL, '2022-11-02 22:31:24', '2022-11-02 23:39:12', NULL),
(7, 6, 5, 72, 82, NULL, '2022-11-02 22:46:14', '2022-11-02 23:40:27', NULL),
(8, 6, 6, 32, 42, NULL, '2022-11-02 22:46:14', '2022-11-02 22:46:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `classroom_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 1, '2022-11-02 20:24:46', '2022-11-02 20:24:46', NULL),
(2, 5, 1, '2022-11-02 20:24:51', '2022-11-02 20:24:51', NULL),
(3, 9, 1, '2022-11-02 20:24:58', '2022-11-02 20:25:24', NULL),
(4, 7, 3, '2022-11-02 20:25:04', '2022-11-02 20:25:04', NULL),
(5, 8, 4, '2022-11-02 20:25:10', '2022-11-02 20:25:10', NULL),
(6, 10, 4, '2022-11-02 20:25:15', '2022-11-02 20:25:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `lesson_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 4, '2022-11-02 18:37:53', '2022-11-02 18:43:25', NULL),
(2, 3, 3, '2022-11-02 18:43:32', '2022-11-02 18:43:35', '2022-11-02 18:43:35'),
(3, 3, 7, '2022-11-02 18:43:58', '2022-11-02 18:44:28', '2022-11-02 18:44:28'),
(4, 4, 5, '2022-11-02 18:44:08', '2022-11-02 18:44:08', NULL),
(5, 3, 7, '2022-11-02 18:44:34', '2022-11-02 18:44:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE IF NOT EXISTS `timetables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`id`, `classroom_id`, `teacher_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 4, 'active', '2022-11-02 19:51:29', '2022-11-02 19:56:08', '2022-11-02 19:56:08'),
(2, 3, 5, 'active', '2022-11-02 19:56:26', '2022-11-02 19:58:04', '2022-11-02 19:58:04'),
(3, 3, 4, 'active', '2022-11-02 19:58:12', '2022-11-02 20:00:08', '2022-11-02 20:00:08'),
(4, 4, 1, 'active', '2022-11-02 20:00:16', '2022-11-02 20:00:16', NULL),
(5, 3, 4, 'active', '2022-11-02 20:38:18', '2022-11-02 20:38:18', NULL),
(6, 4, 4, 'active', '2022-11-02 22:43:25', '2022-11-02 22:43:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ceyhun Çelik', 'ccelik@example.com', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YTPAhNz7NNfRpyTIpaMrIWbrFuJ1fiIX6i6x3Ko4E5ir3WfOlGrdubukDpUr', '2022-11-02 16:36:37', '2022-11-02 21:24:37'),
(2, 2, 'Ercan Havare', 'ehavare@example.com', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xjVbP2tRoCe0LTQFfCfVcSQoUi1YxJoUD92kXorVWXqdKdHBliBIH9deqKFx', '2022-11-02 16:36:37', '2022-11-02 21:24:46'),
(3, 2, 'Ferhat Sarıkaya', 'fsarikaya@example.com', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4q7h8ywARG', '2022-11-02 16:36:37', '2022-11-02 21:24:54'),
(4, 2, 'Gökhan Türkmenoğlu', 'gturkmenoglu@example.com', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rGxYQwmbmOXfCGEj6iE8Y2wWCNjAq4zve2OxEfqwQSVjmKdQVR1fwTESNE2b', '2022-11-02 16:36:37', '2022-11-02 21:25:03'),
(5, 3, 'Grayson Buckridge', 'crooks.theodora@example.org', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xIHOnHSLfm', '2022-11-02 16:36:37', '2022-11-02 16:36:37'),
(6, 3, 'Chaya Kub', 'edwina62@example.com', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JYaeyaLw6a', '2022-11-02 16:36:37', '2022-11-02 16:36:37'),
(7, 3, 'Mr. Muhammad Schulist II', 'antonia.mante@example.org', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jMHhnAcdtC', '2022-11-02 16:36:37', '2022-11-02 16:36:37'),
(8, 3, 'Prof. Garret Rohan', 'angus43@example.com', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2cG367cAQV', '2022-11-02 16:36:37', '2022-11-02 16:36:37'),
(9, 3, 'Mr. Jabari Steuber Jr.', 'harris.christopher@example.com', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JFuCAlKbjB', '2022-11-02 16:36:37', '2022-11-02 16:36:37'),
(10, 3, 'Rosalia Kub', 'shanon.fritsch@example.com', '2022-11-02 16:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7FNRgxVecy', '2022-11-02 16:36:37', '2022-11-02 16:36:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
