# README

## TO DO

* ogólne style dla całej aplikacji
* Widok dla Krasnala (show) - prosty layout i stylowanie
* Lista krasnali (index) - prosty layout i stylowanie
* Formularz "Nowy Wpis". Jako root route? Ograniczony dostęp tylko dla zalogowanych. Co wyświetlać na root'cie jeśli user niezalogowany?
* Funkcjonalność "Moje krasnale" - controller, widok itp
* Widok: show user
* Ranking użytkowników - osobny route. Radio buttons z wyborem "algorytmu".
* Zakładka About - myślę, że fajnie byłoby coś napisać na niej o tym projekcie i krótkie info o autorach (o nas)
* Dodanie odpowiednich zakładek do hedeara
* Zdobycie zdjęć / uzupełnienie informacji o krasnalach
* Uzupełnienie listy osiedli - ile chcemy? Jak bardzo rozbite?
* Wyszukiwarka ?
* ... (pewnie coś więcej)

## Ogólne uwagi

Myślę, że aplikacja może być w miarę rozbudowana, ale starajmy się skupić na funkcjonalnościach, które potem będzie można przedstawić jako SOLID

## Dwarf Model

Na razie dodałem ogólne pola, które mi przyszły do głowy. Myślę, że kilka ich musi być, żebyśmy mogli jakoś rozróżniać krasnale i oprzeć na czymś logikę rankingów.

* original_name - polska nazwa
* english_name - nasze tłumaczenie nazwy na angielski
* description - krótkie zdanie / dwa o krasnalu
* points_value - liczba punktów do rankingu - trzeba pomyśleć jakie wartości powinny tu być
* latitude - szerokość geograficzna - nie wiem czy z tego skorzystamy, ale może by dało się coś z tym zrobić
* longitude - długość geograficzna - jak wyżej
* localization - adres w postaci stringa - na razie prosto; może później będziemy chcieli zrobić z tego Address, ale nie wiem czy będzie sens
* district - osiedle, jako enum
