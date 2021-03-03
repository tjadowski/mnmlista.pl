szablon
0000-00-00
/theme

**Nowość: Wersja 2 szablonu mnmlist!**

Opracowałem dość minimalistyczny szablon WordPressa dla strony mnmlista.pl i chciałbym podzielić się nim z innymi.

Szablon jest oferowany za darmo, z uwolnieniem praw autorskich.

Szablon mnmlista jest goły, są tam tylko niezbędne rzeczy, bez rozkojarzeń od samej treści. Oferuje on co następuje:

* Czysty, biały, niezabałaganiony projekt.
* Treść pozbawiona rozkojarzeń.
* Minimalistyczna stopka.
* Nic innego.
* Brak nagłówka.
* Brak panelu bocznego.
* Brak komentarzy. Jeśli chcesz komentarzy, musisz je samodzielnie dodać.
* Brak widgetów.
* Brak „haczyków”.
* Brak dodatkowych funkcji.
* Brak praw autorskich.
* Brak opłat.

To jest wersja 2 tego szablonu. Dalej pozbawiona jest praw autorskich i dalej jest za darmo – i zawsze tak będzie. W tej wersji:

* usunąłem nagłówek
* usunąłem panel boczny
* zmieniłem czcionki
* dodałem stronę archiwum z wyszukiwaniem
* znacznie uprościłem projekt

Tak, wiem, że jest to zbyt minimalistyczne dla niektórych ludzi, więc Wersja 1 jest wciąż do pobrania poniżej i zawiera ona nagłówek i listwę boczną.

[Pobierz wersję 2 szablonu
mnmlist](/assets/mnmlist2.zip).

Oto zrzut ekranu:

![screenshot](/assets/v2screenshot.png)

Instalacja:

1. [Pobierz szablon](/assets/mnmlist2.zip).
2. Rozpakuj go.
3. Wgraj go do katalogu szablonów WordPress (w katalogu wp-content).
4. Przejdź do panelu administracyjnego WordPress i aktywuj szablon.
5. Dopasuj indeks by umieścić swoje linki do odpowiednich treści (feed, archiwum).
6. Dopasuj stopkę, by miała twoje linki, prawa autorskie. Jeśli tylko chcesz, możesz usunąć informację o autorze.
7. Dopasuj archiwum, by pokazywało twoją domenę w funkcjach wyszukiwania i w kategoriach bloga.
8. Jeśli chcesz mieć na stronie komentarze i inne funkcje, to musisz je samodzielnie dodać.

Więcej informacji jest w pliku README w folderze szablonu.

Ten szablon jest oferowany tak jak jest. Jeśli chcesz go zmienić, po 
prostu to zrób! Zmień kolory, czcionki, style… wyśrodkuj układ, przenieś
 panel boczny, dodaj komentarze, czy cokolwiek innego. Jeśli są tam 
błędy, popraw je! Mam nadzieję, że komuś może się to przydać.

**Wersja 1**

Wersja 1 jest wciąż dostępna do pobrania.

Spójrz na zrzut ekranu:

![](/assets/screen1thumb.png)

![](/assets/screen2thumb.png)

**[Pobierz wersję 1 szablonu mnmlist](/assets/mnmlist.zip)**.

**Często zadawane pytania**

**Pytanie: Dlaczego nie ma nagłówka, panelu bocznego i komentarzy?**

Odpowiedź: Celowo uczyniłem to tak minimalistycznym, jak to tylko 
możliwe. Usunąłem wszystkie funkcjonalności, których nie chcę. Jeśli 
chcesz więcej funkcji, to proponuję wybrać inny szablon. Ten szablon 
pozwala czytelnikom skupić się na treści, a nie na czymkolwiek innym.

**Pytanie: Jak mogę zmienić linki w stopce?**

Odpowiedź: Instrukcje są w pliku „Readme” w szablonie, lecz w skrócie 
klikasz na plik Footer.php w edytorze szablonów WordPressa. Zobaczysz 
tam linki, które możesz dowolnie zmienić. Nie musisz tam pozostawiać 
informacji o autorze lecz nie przeszkadza mi, jeśli to zrobisz.

**Pytanie: W jaki sposób mam wyśrodkować ten szablon, jeśli nie chcę
wyrównania do lewej?**

Odpowiedź: W pliku style.css, na górze, w linii #container&nbsp;dodaj
 “margin: 0 auto;” wewnątrz klamerek {} tej linii. Myślę, że to powinno 
zadziałać, lecz mogę się mylić.

**Pytanie: Jak mogę umieszczać zdjęcia we wpisach?**

Odpowiedź: Użyj tagu img. Ja zazwyczaj umieszczam je na górze wpisu, zanim zacznę pisać samą treść. Oto przykład:

_&lt; img src=”http://mnmlist.com/fotos/20090909pocket.jpg” alt=”” /
&gt;&lt; small &gt;Photo courtesy of &lt; a
href=”http://www.flickr.com/photos/stuartpilbrow/2942333106/”
&gt;stuartpilbrow&lt; /a &gt;.&lt; /small &gt;_

To jest kod do zdjęcia i do informacji o jego autorze. Zlikwiduj tylko
spacje przed i po znakach &lt;&gt;.

**Pytanie: W jaki sposób mogę dodać komentarze do szablonu?**

Odpowiedź: To jest trochę bardziej skomplikowane, lecz wykonalne. Nie 
mogę podać tutaj pełnej instrukcji, lecz w skrócie oto co trzeba zrobić:

1. Znajdź szablon, który używa komentarzy i wyglądają one tak, jak chcesz.
2. Skopiuj plik comments.php do katalogu szablonu mnmlista.
3. Skopiuj kod, który wywołuje komentarze z pliku „singlepost.php” i umieść go w odpowiednim miejscu tego pliku w szablonie mnmlista.
4. Skopiuj kod stylu do tych komentarzy do pliku style.css szablonu mnmlista.

Musisz poeksperymentować z tym by uzyskać pożądany efekt.

Nie zamierzam dodawać komentarzy ani panelu bocznego ani innych funkcji. Tak naprawdę, to w przyszłości mogę jeszcze coś usunąć.
