#include <iostream>
#include <string>
using namespace std;

// Funkcja do obliczania średniej
float oblicz_srednia(int *oceny, int liczba_przedmiotow) {
    int suma = 0;
    for (int i = 0; i < liczba_przedmiotow; i++) {
        suma += *(oceny + i); // Dereferencja wskaźnika, aby uzyskać wartość
    }
    return (float)suma / liczba_przedmiotow;
}

int main() {
    int liczba_przedmiotow;

    // Pobieranie liczby przedmiotów
    cout << "Podaj liczbe przedmiotow: ";
    cin >> liczba_przedmiotow;

    // Dynamiczne tablice dla ocen i nazw przedmiotów
    int *oceny = new int[liczba_przedmiotow];
    string *przedmioty = new string[liczba_przedmiotow];

    // Wprowadzanie ocen i nazw przedmiotów
    for (int i = 0; i < liczba_przedmiotow; i++) {
        cout << "Podaj nazwe przedmiotu: ";
        cin >> przedmioty[i];
        cout << "Podaj ocene z " << przedmioty[i] << ": ";
        cin >> oceny[i];
    }

    // Obliczanie średniej
    float srednia = oblicz_srednia(oceny, liczba_przedmiotow);
    cout << "Srednia ocen wynosi: " << srednia << endl;

    // Możliwość zmiany oceny
    char czy_zmienic;
    cout << "Czy chcesz zmienic jakas ocene? (t/n): ";
    cin >> czy_zmienic;

    if (czy_zmienic == 't') {
        int indeks;
        cout << "Podaj numer przedmiotu (1 - " << liczba_przedmiotow << "): ";
        cin >> indeks;
        cout << "Podaj nowa ocene z " << przedmioty[indeks - 1] << ": ";
        cin >> *(oceny + (indeks - 1)); // Zmiana oceny za pomocą wskaźnika

        // Ponowne obliczenie średniej po zmianie oceny
        srednia = oblicz_srednia(oceny, liczba_przedmiotow);
        cout << "Nowa srednia ocen wynosi: " << srednia << endl;
    }

    // Zwolnienie pamięci
    delete[] oceny;
    delete[] przedmioty;

    return 0;
}
