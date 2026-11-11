# LearnIT #
## DevOps course ##
### lesson_11 ###

21. Zadania domowe
🟢 Poziom podstawowy
Zadanie 1: Kopia zapasowa katalogu
Cel: łączysz argumenty, walidację i tar z lekcji 8 w jedno narzędzie.
Napisz kopia.sh <katalog-źródłowy> [katalog-docelowy] tworzący archiwum nazwa-RRRR-
MM-DD-HHMM.tar.gz . Katalog docelowy domyślnie ~/kopie , tworzony w razie potrzeby. Skrypt
sprawdza, że źródło jest katalogiem, a po spakowaniu wypisuje rozmiar archiwum i weryfikuje je
przez tar -tzf .
✅ Kryterium ukończenia
Dwa uruchomienia pod rząd tworzą dwa archiwa o różnych nazwach, oba przechodzą test
integralności, a wywołanie na nieistniejącej ścieżce kończy się kodem różnym od zera i
komunikatem na stderr.
Zadanie 2: Generator plików konfiguracyjnych
Cel: używasz heredoc w obu wariantach cytowania.
Napisz generuj-konfig.sh <środowisko> ( dev , stage , prod ), który przez case ustala
wartości i generuje dwa pliki: app.env z podstawionymi zmiennymi ( <<EOF ) oraz wykonywalny
start.sh , w którym znaki dolara mają zostać zapisane dosłownie ( <<'EOF' ).
✅ Kryterium ukończenia
W app.env widać konkretne wartości, w start.sh widać zmienne $1 i ${ZMIENNA}
niepodstawione, a bash -n start.sh nie zgłasza błędów.
Zadanie 3: Statystyka katalogu
Cel: ćwiczysz tablice asocjacyjne i printf .
Napisz statystyka.sh <katalog> zliczający pliki według rozszerzenia (tablica asocjacyjna,
klucz z ${nazwa##*.} ) i wypisujący tabelę posortowaną malejąco oraz podsumowanie: liczba
plików, liczba katalogów, największy plik z rozmiarem.
✅ Kryterium ukończenia
Wynik dla /etc jest zgodny z tym, co daje niezależny potok find ... | awk , kolumny
są wyrównane, a pliki bez rozszerzenia trafiają do osobnej kategorii (brak) 
