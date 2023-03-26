-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Maj 2022, 09:26
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artykuly`
--

CREATE TABLE `artykuly` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `cena_app` int(11) NOT NULL,
  `ilosc` varchar(15) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `artykuly`
--

INSERT INTO `artykuly` (`id`, `nazwa`, `cena`, `cena_app`, `ilosc`) VALUES
(1, 'mleko', 5, 4, 'nieograniczono'),
(4, 'olej', 10, 8, 'nieograniczono'),
(6, 'sok', 8, 6, '4'),
(7, 'cukier', 10, 8, '3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `haslo` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `rola` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `nazwa`, `haslo`, `email`, `rola`) VALUES
(1, 'admin', 'admin', 'admin@sklep.com', 'Admin'),
(2, 'AdamK', 'qwerty', 'AdamK123@gmail.com', 'Klient'),
(3, 'Marian', 'qwerty', 'skks@kks.pl', 'Kasjer'),
(4, 'MarianNow', 'qwerty', 'oksksko@gmail.com', 'Klient'),
(5, 'MonikaKowal', 'qwerty', 'Monika12@gmail.com', 'Klient'),
(6, 'Aleksander', 'qwerty', 'akkak@gmail.com', 'Klient'),
(7, 'klient', 'klient', 'kakak@klient.com', 'Klient'),
(8, 'MarianO', 'qwerty', 'ddd@gmail.com', 'Klient');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `artykuly`
--
ALTER TABLE `artykuly`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `artykuly`
--
ALTER TABLE `artykuly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;