#include <iostream>
#include <string>
#include <vector>
using namespace std;

class SerVivo {
protected:
    string nome;

public:
    SerVivo(string nome) {
        this->nome = nome;
    }

    virtual void apresentar() {
        cout << "Sou um ser vivo genérico, meu nome é " << nome << "." << endl;
    }

    virtual ~SerVivo() {}
};

class Humano : public SerVivo {
public:
    Humano(string nome) : SerVivo(nome) {}

    void apresentar()  {
        cout << "Olá, sou um humano chamado " << nome << "!" << endl;
    }
};

class Elfo : public SerVivo {
public:
    Elfo(string nome) : SerVivo(nome) {}

    void apresentar()  {
        cout << "Saudações, sou um elfo das florestas, meu nome é " << nome << endl;
    }
};

class Fada : public SerVivo {
public:
    Fada(string nome) : SerVivo(nome) {}

    void apresentar() override {
        cout << "Eu sou uma fada mágica chamada " << nome << endl;
    }
};

int main() {
    vector<SerVivo*> lista;

    Humano h("sebastiao");
    Elfo e("davizin");
    Fada f("ana");

    lista.push_back(&h);
    lista.push_back(&e);
    lista.push_back(&f);

    for (int i = 0; i < lista.size(); i++) {
    lista[i]->apresentar();
}

    return 0;
}
