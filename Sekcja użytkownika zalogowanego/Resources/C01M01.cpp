#include <iostream>
using namespace std;

int main() {
    // Deklaracja zmiennych
    float waga, wzrost, bmi;
    const float MIN_NORMA = 18.5;
    const float MAX_NORMA = 24.9;
    
    // Pobranie danych od użytkownika
    cout << "Podaj swoja wage (kg): ";
    cin >> waga;
    
    cout << "Podaj swoj wzrost (m): ";
    cin >> wzrost;

    // Obliczanie BMI
    bmi = waga / (wzrost * wzrost);

    // Wyświetlenie wyniku
    cout << "Twoje BMI wynosi: " << bmi << endl;

    // Instrukcje warunkowe do określenia stanu wagi
    if (bmi < MIN_NORMA) {
        cout << "Masz niedowage." << endl;
    } else if (bmi >= MIN_NORMA && bmi <= MAX_NORMA) {
        cout << "Twoja waga jest prawidlowa." << endl;
    } else if (bmi > MAX_NORMA && bmi <= 29.9) {
        cout << "Masz nadwage." << endl;
    } else {
        cout << "Masz otylosc." << endl;
    }

    return 0;
}
