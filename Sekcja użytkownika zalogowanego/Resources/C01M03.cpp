#include <iostream>
#include <string>
using namespace std;

struct DaneTechniczne {
    string model;
    int rok_produkcji;
    int przebieg;
};

class Pojazd {
public:
    DaneTechniczne dane;

    Pojazd(string model, int rok, int przebieg) {
        dane.model = model;
        dane.rok_produkcji = rok;
        dane.przebieg = przebieg;
    }

    virtual void jedz() {
        cout << "Pojazd jedzie." << endl;
    }

    virtual void wyswietlInformacje() {
        cout << "Model: " << dane.model << ", Rok: " << dane.rok_produkcji << ", Przebieg: " << dane.przebieg << endl;
    }
};

class Samochod : public Pojazd {
public:
    Samochod(string model, int rok, int przebieg) : Pojazd(model, rok, przebieg) {}

    void jedz() override {
        cout << "Samochód jedzie po drodze." << endl;
    }
};

class Ciezarowka : public Pojazd {
public:
    Ciezarowka(string model, int rok, int przebieg) : Pojazd(model, rok, przebieg) {}

    void jedz() override {
        cout << "Ciężarówka przewozi ładunek." << endl;
    }

    void laduj() {
        cout << "Ładowanie ciężarówki." << endl;
    }
};

class Rower : public Pojazd {
public:
    Rower(string model, int rok, int przebieg) : Pojazd(model, rok, przebieg) {}

    void jedz() override {
        cout << "Rower jedzie po ścieżce rowerowej." << endl;
    }
};

int main() {
    Pojazd* flota[3];
    flota[0] = new Samochod("Toyota Corolla", 2018, 50000);
    flota[1] = new Ciezarowka("Volvo FH", 2015, 200000);
    flota[2] = new Rower("Kross Hexagon", 2020, 1000);

    for (int i = 0; i < 3; i++) {
        flota[i]->wyswietlInformacje();
        flota[i]->jedz();
        cout << endl;
    }

    // Zwolnienie pamięci
    for (int i = 0; i < 3; i++) {
        delete flota[i];
    }

    return 0;
}
