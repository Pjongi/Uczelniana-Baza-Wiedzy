# Uczelniana Baza Wiedzy (UBW)

> **Centralne repozytorium wiedzy dla Kół Naukowych i Organizacji Studenckich.**
> Projekt realizowany w ramach przedmiotu Podstawy Zarządzania Projektami.

---

## O Projekcie
Celem projektu UBW jest rozwiązanie problemu utraty wiedzy ("wiedzy plemiennej") w organizacjach studenckich. System umożliwia centralizację dokumentacji, procedur i kontaktów, ułatwiając onboarding nowych członków i zachowanie ciągłości działania kół naukowych.

**Termin realizacji:** 24.11.2025 – 27.01.2026
**Status:** W toku 

---

## Stos Technologiczny
Projekt oparty jest na nowoczesnej architekturze trójwarstwowej.

### Backend
* **Język:** Java 17
* **Framework:** Spring Boot 3.1
* **Security:** Spring Security 6 (JWT)
* **API:** RESTful

### Frontend
* **Framework:** React
* **Styling:** CSS Modules / Custom (Styl Steam/Obsidian)

### Baza Danych
* **Silnik:** PostgreSQL
* **ORM:** Hibernate / Spring Data JPA

---

## Zespół Projektowy

| Rola | Imię i Nazwisko | Odpowiedzialność |
| :--- | :--- | :--- |
| **LIDER / PM** | **Tobiasz Grala** | Zarządzanie, Analiza Biznesowa, Testy Akceptacyjne |
| **BACKEND** | **Tymoteusz Kot** | Architektura API, Logika Biznesowa, Security |
| **FRONTEND** | **Szymon Pokora** | UI/UX, Implementacja React, Integracja |
| **DATABASE** | **Urszula Szmit** | Projekt ERD, SQL, Optymalizacja, Dane Testowe |

---

## HARMONOGRAM PRAC (MASTER PLAN)

### ETAP 1: FUNDAMENTY I STRUKTURA (24.11 – 07.12)

#### **Tydzień 1 (24.11 – 30.11): Start, Baza i Auth**
- [ ] **[DB]** Projekt schematu bazy danych (ERD) dla modułu użytkowników.
- [ ] **[DB]** Skrypty DDL: `users`, `user_profiles`, `roles`.
- [ ] **[BACK]** Inicjalizacja Spring Boot 3 + Java 17.
- [ ] **[BACK]** Konfiguracja Spring Security 6 (JWT, Stateless).
- [ ] **[FRONT]** Przegląd makiety graficznej i zebranie uwag.
- [ ] **[LIDER]** Setup repozytorium i tablicy zadań.

#### **Tydzień 2 (01.12 – 07.12): Logika Kół Naukowych**
- [ ] **[DB]** Projekt tabeli `student_clubs` i `club_membership`.
- [ ] **[BACK]** Logika biznesowa tworzenia kół i dołączania do nich.
- [ ] **[BACK]** Implementacja DTO dla kół (unikanie problemu N+1).
- [ ] **[FRONT]** Inicjalizacja projektu React i konfiguracja stylów.
- [ ] **[LIDER]** Opracowanie procedur biznesowych (zakladanie kół).

### ETAP 2: ZARZĄDZANIE WIEDZĄ (08.12 – 21.12)

#### **Tydzień 3 (08.12 – 14.12): Core Systemu (Artykuły)**
- [ ] **[DB]** Tabele `articles`, `tags` oraz `categories` (drzewo).
- [ ] **[BACK]** CRUD dla artykułów.
- [ ] **[BACK]** Logika uprawnień ("Edytuje autor LUB Admin Koła").
- [ ] **[FRONT]** Implementacja Strony Głównej (Layout, Nagłówek).
- [ ] **[LIDER]** Weryfikacja API pod kątem frontendowym.

#### **Tydzień 4 (15.12 – 21.12): Bezpieczeństwo i Widoki**
- [ ] **[DB]** Nałożenie CONSTRAINTS i indeksów w bazie.
- [ ] **[BACK]** Wpięcie OWASP HTML Sanitizer (XSS).
- [ ] **[BACK]** Walidacja danych wejściowych (`@NotNull`).
- [ ] **[FRONT]** Implementacja podstron (Lista kategorii, Widok Koła).
- [ ] **[LIDER]** Testy bezpieczeństwa i weryfikacja UX.

### ETAP 3: DANE I ALGORYTMY (22.12 – 06.01)

#### **Przerwa Świąteczna (22.12 – 30.12): Data Seeding**
- [ ] **[DB]** **ZADANIE KRYTYCZNE:** Skrypty SQL z danymi testowymi (3 koła, 10 userów).
- [ ] **[BACK]** Implementacja Wyszukiwania (`ContainingIgnoreCase`).
- [ ] **[BACK]** `CommandLineRunner` do importu danych startowych.
- [ ] **[FRONT]** Testy UX i poprawki responsywności.
- [ ] **[LIDER]** Tworzenie realistycznej treści ("Content") do demo.

#### **Nowy Rok (02.01 – 06.01): Jakość**
- [ ] **[BACK]** Testy jednostkowe (JUnit 5).
- [ ] **[DB]** Audyt zapytań SQL i dokumentacja struktury.

### ETAP 4: INTEGRACJA I FINAŁ (07.01 – 27.01)

#### **Tydzień 5 (07.01 – 13.01): Wielka Integracja**
- [ ] **[BACK]** Konfiguracja CORS i profili (`dev`/`prod`).
- [ ] **[FRONT]** **Podpięcie API:** Zastąpienie mocków danymi z backendu.
- [ ] **[LIDER]** Testy End-to-End (pełna ścieżka użytkownika).

#### **Tydzień 6 (14.01 – 20.01): Stabilizacja**
- [ ] **[TEAM]** **CODE FREEZE (14.01)** - Stop nowym funkcjom.
- [ ] **[BACK]** Optymalizacja wydajności (logi Hibernate).
- [ ] **[FRONT]** Ostateczny szlif wizualny ("Pixel perfect").
- [ ] **[DB]** Czyszczenie bazy z danych "śmieciowych".

#### **Tydzień 7 (21.01 – 27.01): Finał**
- [ ] **[TEAM]** Wdrożenie środowiska prezentacyjnego.
- [ ] **[TEAM]** Próba generalna prezentacji.
- [ ] **[TEAM]** Oddanie projektu (27.01.2026).

---

## Jak uruchomić projekt (Dev)

### Backend
TBA

### Frontend
TBA
