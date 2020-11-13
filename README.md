# Clean architecture with ViewModel

## Spis treści:
1. ViewModel - View - Model - podział odpowiedzialności
2. Podział na moduły i feature'y
2. Implementacja ViewModel'u przy użyciu paczek flutter_bloc & freezed
3. Konstrukcja warstwy UI

## ViewModel - View - Model - podział odpowiedzialności
Warstwa UI, czyli wszystko co jest Widgetem zajmuje się tylko rysowaniem danych otrzymanych z ViewModelu w formie pojedyńczego obiektu State. Każdy ViewModel definiuje listę możliwych stanów w jakich może się znaleźć odpowiadającu mu ekran - na przykład DataAvailableState, NetworkUnavailableState, LoadingState i tak dalej. UI używa jednego BlocBuildera (StreamBuilder+) do rozstrzygnięcia w jakim stanie się znajduje i narysowania go w odpowiedni sposób. Dodatkowo, informuje ViewModel o interakcjach z użytkownikiem, poprzez wywoływanie odpowiednich metod na ViewModel'u. ViewModel może w odpowiedzi na interakcję emitować nowy stan lub też nie. Model jest podzielony na warstwę domenową (repozytoria) oraz warstwy danych - po jednej na źródło danych (baza danych, network, cache itp.). W warstwie domenowej znajduje się logika biznesowa (na przykład kalkulatory z MediWeba) oraz repozytoria, które agregują źródła danych i podają je w formie Stream'ów ViewModelowi, tak aby ten nie musiał wiedzieć skąd przychodzą do niego dane ani jak je zdobyć. Warstwy danych zajmują się opakowaniem poszczególnych źródeł danych w przystępny sposób dla repozytorium, aby to mogło się skupić na agregowaniu tych danych. ViewModel zajmuje się reagowaniem na zdarzenia w UI (Widget wywołuje metodę na ViewModelu) oraz na zdarzenia w modelu (nowe dane w eksponowanych przez repozytoria Stream'ach). ViewModel może nasłuchiwać wiele strumieni z wielu repozytoriów, a następnie przekształca je w obiekt State, który UI może narysować bez konieczności jakiegokolwiek przekształcania otrzymanych danych. Jeżeli Widget używa metody setState() to prawdopodobnie zajmuje się czymś co jest odpowiedzialnością ViewModel'u.
