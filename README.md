# Clean architecture with ViewModel

## Spis treści:
1. ViewModel - View - Model - podział odpowiedzialności
2. Podział na moduły i feature'y
3. Implementacja ViewModel'u przy użyciu paczek flutter_bloc & freezed
4. Dobre praktyki
5. Generowanie kodu

## ViewModel - View - Model - podział odpowiedzialności
Warstwa UI, czyli wszystko co jest Widgetem zajmuje się tylko rysowaniem danych otrzymanych z ViewModelu w formie pojedyńczego obiektu State. Każdy ViewModel definiuje listę możliwych stanów w jakich może się znaleźć odpowiadającu mu ekran - na przykład DataAvailableState, NetworkUnavailableState, LoadingState i tak dalej. UI używa jednego BlocBuildera (StreamBuilder+) do rozstrzygnięcia w jakim stanie się znajduje i narysowania go w odpowiedni sposób. Dodatkowo, informuje ViewModel o interakcjach z użytkownikiem, poprzez wywoływanie odpowiednich metod na ViewModel'u. ViewModel może w odpowiedzi na interakcję emitować nowy stan lub też nie.

Model jest podzielony na warstwę domenową (repozytoria) oraz warstwy danych - po jednej na źródło danych (baza danych, network, cache itp.). W warstwie domenowej znajduje się logika biznesowa (na przykład kalkulatory z MediWeba) oraz repozytoria, które agregują źródła danych i podają je w formie Stream'ów ViewModelowi, tak aby ten nie musiał wiedzieć skąd przychodzą do niego dane ani jak je zdobyć. Warstwy danych zajmują się opakowaniem poszczególnych źródeł danych w przystępny sposób dla repozytorium, aby to mogło się skupić na agregowaniu tych danych.

ViewModel zajmuje się reagowaniem na zdarzenia w UI (Widget wywołuje metodę na ViewModelu) oraz na zdarzenia w modelu (nowe dane w eksponowanych przez repozytoria Stream'ach). ViewModel może nasłuchiwać wiele strumieni z wielu repozytoriów, a następnie przekształca je w obiekt State, który UI może narysować bez konieczności jakiegokolwiek przekształcania otrzymanych danych. Jeżeli Widget używa metody setState() to prawdopodobnie zajmuje się czymś co jest odpowiedzialnością ViewModel'u.

Zalety:
* W pogmatwanych klasach odpowiedzialnych za rysowanie UI nie ma logiki. Idealnie nie ma w nich nawet krążącego ViewModel'u, który jest obsługiwany przez jeden Widget - Page.
* UI nie musi informować ViewModel'u kiedy ten powinien ponownie pobrać dane. Prosi tylko o wykonanie zmiany w danych, a dzięki Stream'om jest automatycznie generowany nowy State dla niego.
* Logika biznesowa jest zamknięta w jednym pakiecie tak samo jak szczegóły obsługi poszczególnych źródeł danych.

## Podział na moduły i feature'y

W folderze lib powinny się znajdować pakiety:
* UI (zawiera Widgety i ViewModele)
* domain (repozytoria i serwisy takie jak kalkulatory zawierające logikę biznesową)
* data_[nazwa_źródła_danych] (tyle takich pakietów ile jest używanych źródeł danych)

Wewnątrz tych pakietów, dalsze pakiety są segregowane per feature. Nie łączy się w jeden pakiet wszystkich repozytoriów (nikt nigdy nie szuka wszystkich repozytoriów) tylko wszystkie komponenty dotyczące danego feature'a.

## Implementacja ViewModel'u przy użyciu paczek flutter_bloc & freezed

flutter_bloc udostępnia wiele użytecznych klas i Widgetów, na przykład:
* Cubit - bazowy typ dla ViewModel'u, który pozwala łatwo ustawiać początkowy stan i emitować State'y bez konieczności ręcznego używania BehaviourSubject'ów i takich.
* BlocBuilder - StreamBuilder dostosowany do podawania State'ów oraz samodzielnie uzyskujący dostęp do ViewModel'u przy użyciu BuildContext.
* BlocProvider - Provider, który dodatkowo steruje zasięgiem ViewModel'u (dispose)
* BlocListener i inne alternatywy dla BlocBuildera, które pozwalają w odpowiedzi na State nie przebudowywać się tylko na przykład wyświetlić SnackBar
* BlocObserver - pozwala dodać logikę do wszystkich ViewModeli, na przykład logowanie zmian w State'ach.

freezed pozwala stworzyć wyjątkowo wygodne State'y - na modę Kotlinowej sealed class.

Zalety:
- wygoda
- brak konieczności utrzymywania bazowych klas dla Page'ów i ViewModel'i

## Dobre praktyki
