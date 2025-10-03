#include <iostream>
#include <string>
using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    void setNome(string nome) {
        this->nome = nome;
    }
    void setIdade(int idade) {
        this->idade = idade;
    }

    string getNome() {
        return this->nome;
    }
    int getIdade() {
        return this->idade;
    }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    void setNivel(int nivel) {
        this->nivel = nivel;
    }
    int getNivel() {
        return this->nivel;
    }
};

class Personagem : public Pessoa {
private:
    int rank; 

public:
    void setRank(int rank) {
        if (rank >= 0 && rank <= 10) {
            this->rank = rank;
        } else {
            this->rank = 0; 
        }
    }

    int getRank() {
        return this->rank;
    }
};

int main() {
    Protagonista p1;
    p1.setNome("ana");
    p1.setIdade(17);
    p1.setNivel(5);

    Personagem p2;
    p2.setNome("sebastiao");
    p2.setIdade(16);
    p2.setRank(8);

    cout << "protagonista:" << endl;
    cout << "Nome: " << p1.getNome() << endl;
    cout << "idade: " << p1.getIdade() << endl;
    cout << "nivel: " << p1.getNivel() << endl;

    cout << "\npersonagem" << endl;
    cout << "nome: " << p2.getNome() << endl;
    cout << "idade: " << p2.getIdade() << endl;
    cout << "rank: " << p2.getRank() << endl;

    return 0;
}
