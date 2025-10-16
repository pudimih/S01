class ArmaCorpoACorpo:
    def __init__(self, nome):
        self.__nome = nome

    def get_nome(self):
        return self.__nome

    def set_nome(self, novo_nome):
        self.__nome = novo_nome

    def __str__(self):
        return f"Arma: {self.__nome}"


class PhantomThieves:
    def __init__(self, nome, arma):
        self.__nome = nome
        self.__arma = arma

    def get_nome(self):
        return self.__nome

    def set_nome(self, novo_nome):
        self.__nome = novo_nome

    def get_arma(self):
        return self.__arma

    def set_arma(self, nova_arma):
        self.__arma = nova_arma

    def __str__(self):
        return f"{self.__nome}, arma: {self.__arma.get_nome()}"


class Joker:
    def __init__(self, equipe):
        self.__arma = ArmaCorpoACorpo("Faca")
        self.__equipe = equipe

    def get_arma(self):
        return self.__arma

    def set_arma(self, nova_arma):
        self.__arma = nova_arma

    def get_equipe(self):
        return self.__equipe

    def set_equipe(self, nova_equipe):
        self.__equipe = nova_equipe

    def mostrar_equipe(self):
        print("Equipe de joker é:")
        for membro in self.__equipe:
            print(membro)

    def __str__(self):
        return f"Joker usa {self.__arma.get_nome()}"
    

if __name__ == "__main__":
    arma_medina = ArmaCorpoACorpo("Espada Curta")
    arma_sebastiao = ArmaCorpoACorpo("Chicote")

    m1 = PhantomThieves("medina", arma_medina)
    m2 = PhantomThieves("sebastiao", arma_sebastiao)

    equipe = [m1, m2]
    joker = Joker(equipe)
    
    print("deseja adicionar um personagem manualmente alemm dos classicos sebastiao e medina? (s/n)")
    resposta = input()
    if (resposta == "s"):
        print("Digite o nome do personagem:")
        nome_personagem = input()
        print("Digite o nome da arma do personagem:")
        nome_arma = input()
        nova_arma = ArmaCorpoACorpo(nome_arma)
        novo_personagem = PhantomThieves(nome_personagem, nova_arma)
        m3 =PhantomThieves(nome_personagem, nova_arma)
        joker.set_equipe(equipe)
        equipe.append(m3)
    
    print(joker)
    joker.mostrar_equipe()
        


