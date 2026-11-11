# LearnIT #
## DevOps course ##
### lesson_11 ###

Zadania domowe
_____________
Poziom podstawowy
1. Zadanie 1: Kopia zapasowa katalogu<br>
Cel: łączysz argumenty, walidację i tar z lekcji 8 w jedno narzędzie.<br>
Napisz kopia.sh <katalog-źródłowy> [katalog-docelowy] tworzący archiwum nazwa-RRRR MM-DD-HHMM.tar.gz .<br>
 Katalog docelowy domyślnie ~/kopie , tworzony w razie potrzeby. Skrypt sprawdza, że źródło jest katalogiem,<br>
a po spakowaniu wypisuje rozmiar archiwum i weryfikuje je przez tar -tzf .
2. Zadanie 2: Generator plików konfiguracyjnych<br>
Cel: używasz heredoc w obu wariantach cytowania.<br>
Napisz generuj-konfig.sh <środowisko> ( dev , stage , prod ), który przez case ustala wartości i generuje dwa pliki:<br>
app.env z podstawionymi zmiennymi ( <<EOF ) oraz wykonywalny start.sh , w którym znaki dolara mają zostać zapisane dosłownie ( <<'EOF' ).<br>
3. Zadanie 3: Statystyka katalogu<br>
Cel: ćwiczysz tablice asocjacyjne i printf .<br>
Napisz statystyka.sh <katalog> zliczający pliki według rozszerzenia (tablica asocjacyjna klucz z ${nazwa##*.} )<br>
i wypisujący tabelę posortowaną malejąco oraz podsumowanie: liczba plików, liczba katalogów, największy plik z rozmiarem.
