#include <iostream>
#include <string>
using namespace std;

class Personagem {
private:
    string nome;
    int nivel;
    int dano;
    int vida;

public:
    Personagem(string n, int ni, int d, int v) {
        nome = n;
        nivel = ni;
        dano = d;
        vida = v;
    }

    void atacar(Personagem &inimigo) {
        cout << nome << " atacou " << inimigo.nome 
             << " causando " << dano << " de dano!" << endl;
        inimigo.vida -= dano;

        if (inimigo.vida < 0) {
            inimigo.vida = 0; 
        }
    }
    
    void mostrarInfo() {
        cout << "\nnome: " << nome 
             << "\nnivel: " << nivel 
             << "\nvano: " << dano 
             << "\nvida: " << vida << endl;
    }
};

int main() {
    Personagem p1("Arqueiro", 5, 20, 100);
    Personagem p2("Guerreiro", 7, 15, 120);

    p1.atacar(p2);

    cout << "\nresultado final:" << endl;
    p1.mostrarInfo();
    p2.mostrarInfo();

    return 0;
}
