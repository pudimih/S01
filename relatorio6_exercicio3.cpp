#include <iostream>
#include <string>
using namespace std;

class Pessoa {
protected: 
    string nome; 

public:
    Pessoa(string nome) {
        this->nome = nome;
    }

    virtual void apresentar() {
        cout << "Ola, meu nome e " << this->nome << " e eu sou uma pessoa." << endl;
    }
};

class Professor : public Pessoa {
private:
    string disciplina;

public:
    Professor(string nome, string disciplina) : Pessoa(nome) {
        this->disciplina = disciplina;
    }

    void apresentar() {
        cout << "Ola, meu nome e " << this->nome 
             << " e eu sou um professor de " << this->disciplina << endl;
    }
};

class Aluno : public Pessoa {
private:
    string curso;

public:
    Aluno(string nome, string curso) : Pessoa(nome) {
        this->curso = curso;
    }

    void apresentar() {
        cout << "Ola, meu nome e " << this->nome 
             << " e eu sou um aluno de " << this->curso <<  endl;
    }
};

int main() {
    Pessoa* p1 = new Professor("Chris", "Programacao Orientada a Objetos");
    Pessoa* p2 = new Aluno("Medina", "Engenharia de Software");

    p1->apresentar();
    p2->apresentar();

    delete p1;
    delete p2;

    return 0;
}
