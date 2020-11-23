# Clean architecture with ViewModel

## Spis treści:
1. ViewModel - View - Model - podział odpowiedzialności
2. Podział na moduły i feature'y
3. Implementacja ViewModel'u przy użyciu paczek [flutter_bloc](https://pub.dev/packages/flutter_bloc) & [freezed](https://pub.dev/packages/freezed)
4. Dependency Injection
5. Nawigacja
6. Dobre praktyki
7. Generowanie kodu

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

## Implementacja ViewModel'u przy użyciu paczek [flutter_bloc](https://pub.dev/packages/flutter_bloc) & [freezed](https://pub.dev/packages/freezed)

[flutter_bloc](https://pub.dev/packages/flutter_bloc) udostępnia wiele użytecznych klas i Widgetów, na przykład:
* Cubit - bazowy typ dla ViewModel'u, który pozwala łatwo ustawiać początkowy stan i emitować State'y bez konieczności ręcznego używania BehaviourSubject'ów i takich.
* BlocBuilder - StreamBuilder dostosowany do podawania State'ów oraz samodzielnie uzyskujący dostęp do ViewModel'u przy użyciu BuildContext.
* BlocProvider - Provider, który dodatkowo steruje zasięgiem ViewModel'u (dispose)
* BlocListener i inne alternatywy dla BlocBuildera, które pozwalają w odpowiedzi na State nie przebudowywać się tylko na przykład wyświetlić SnackBar
* BlocObserver - pozwala dodać logikę do wszystkich ViewModeli, na przykład logowanie zmian w State'ach.

[freezed](https://pub.dev/packages/freezed) pozwala stworzyć wyjątkowo wygodne State'y - na modę Kotlinowej sealed class.

Zalety:
- wygoda
- brak konieczności utrzymywania bazowych klas dla Page'ów i ViewModel'i
- obie paczki są popularne, utrzymywane i uznawane za dobrą praktykę

## Dependency Injection

Użyty jest pakiet [get_it](https://pub.dev/packages/get_it) z rozszerzeniem [injectable](https://pub.dev/packages/injectable). Pierwszy zawiera silnik DI, a drugi pozwala zastąpić ręczną konfigurację adnotacjami. Wszystkie repozytoria, ViewModel'e, serwisy, bazy danych adnotuje się @injectable(instancja per wywołanie), @singleton lub @lazySingleton. W praktyce nie trzeba potem nigdzie kontruować żadnych klas które nie są Widgetami. Punktem wyjścia - gdzie ręcznie wyciąga się ViewModel'e są BlocProvidery, gdzie przy użyciu metody getIt<ViewModelType>() otrzymywany jest ViewModel ze wsystkimi zależnościami bez konieczności tworzenia fabryki ViewModel'i ani żadnej dodatkowej konfiguracji. Jedynie third-party obiekty (logger, GlobalNavigationKey) są umieszczane ręcznie w odpowiednim module di. Wszystko przypomina Daggera z Androida, ale bez makabrycznego setupu.

Zalety:
* brak konieczności utrzymywania appInjectora
* brak konieczności utrzymywania ViewModelFactory
* bardzo łatwe zmienianie istniejących klas i dodawanie nowych. Uruchamia się tylko ponownie generowanie kodu i wszystkie zależności trafiają tam, gdzie są potrzebne. Pozwala to w końcu programować obiektowo, zamiast statycznych metod, bo w końcu nie wiąże się to z dodatkowym wysiłkiem.

## Nawigacja

Nawigacja jest rozwiązana banalnie - Page posiada statyczną metodę getRoute(), która zwraca Route. Dzięki temu nie trzeba utrzymywać osobnego pliku do nawigacji, porcji stringów, jest zapewnione type-safety przy przekazywaniu argumentów i jest dużo większa kontrola nad tworzonymi ścieżkami. Named routes nie pozwalają na przykład w łatwy sposób stworzyć Route'a, który jest dialogiem ani różnych przejść na różnych widokach.

Dodatkowo nawigacja znajduje się w ViewModelu przy użyciu injectowanego GlobalKey<NavigatorState>. To pozwala rozwiązać przypadki, kiedy cel nawigacji nie jest znany zawczasu. Niektóre przyciski mogą nawigować w różne miejsca w zależności od stanu danych (slider w P&P), a widok z definicji nie powinien zawierać logiki.

Zalety:
* brak konieczności utrzymywania wiecznie rozrastającego się pliku routes (open-closed principle)
* większa kontrola nad nawigacją
* możliwośc czystego conditional-nawigowania

## Dobre praktyki

### Osobne modele danych w poszczególnych warstwach danych i w warstwie biznesowej

Używanie jednego modelu danych w całej aplikacji (na przykład ProductDto) wiąze się z problemami. Wiele informacji pobieranych z sieci nie ma znaczenia dla UI, a często mogą wręcz różnić się od tego co ten potrzebuje. To samo z modelami dotyczącymi baz danych. Co więcej, UI może potrzebować danych, które nie są wprost pobrane z sieci a są dynamicznie konstruowane, dodawane lub filtrowane. Dlatego warto jest mieć po jednym modelu dla każdego źródła danych oraz model biznesowy (który będzie używany również w UI). Repozytorium przy pomocy mapperów powinno zająć się tłumaczeniem poszczególnych modeli danych na ten czytelny dla siebie i dla UI.

Zalety:
* Możliwość filtrowania, dodawania i usuwania części danych przed przekazaniem ich do UI lub z UI do źródeł danych.
* do UI nie trafia logika typowa dla źródeł danych (mapowanie JSON'ów, korelacyjne id z bazy danych itp.)

### Tylko jeden Widget komunikuje się z ViewModelem.

Tylko jeden Widget komunikuje się z ViewModelem, pozostałe otrzymują od niego tylko VoidCallbacki. Dzięki temu mniejsze części widoku są 'głupie', tak jak być powinny. Dzięki temu można łatwo prześledzić komunikację UI - ViewModel i dużo łątwiej ponownie wykorzystywać mniejsze Widgety w innych ekranach.

Zalety:
* łatwiejszy reuse mniejszych Widgetów
* przejrzysta komunikacja z ViewModelem

### Either zamiast customowych Resultów

Result albo RequestResult są dobrą praktyką, ale można je w zupełności zastąpić gotową monadą z [dartz](https://pub.dev/packages/dartz) Either<Left, Right>. Warto to zrobić, żeby utrzymywać mniej kodu, a w dodatku taka generyczna monada ma mnóstwo funkcji, które ułatwiają obsługiwanie jej warości (fold(), leftMap(), rightMap()). Własnoręczne dopisywanie takich funkcji jest uciążliwe i nie zrobimy tego lepiej niż paczka, która jest zadbana i w tym się specjalizuje.

Zalety:
* mniej kodu do utrzymania
* dostęp do wielu utility metod

## Generowanie kodu

Po wprowadzeniu zmian w pliku, który bierze udział w generowaniu kodu trzeba wpisać w terminalu:
flutter pub run build_runner build

Takie klasy można rozpoznać po znajdującej się deklaracji 'part' pod importami, ale nie tylko. Po zmianie konstruktora klasy opatrzonej adnotacją Dependency Injection też trzeba ponownie wygenerować kod.

Paczki, które w tym repo wymagają generowania kodu:
* [freezed](https://pub.dev/packages/freezed)
* [injectable](https://pub.dev/packages/injectable)
* [moor](https://pub.dev/packages/moor)
* [chopper](https://pub.dev/packages/chopper) (networking)
