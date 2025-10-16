class Heroi:
    def __init__(self, nome, funcao):
        self.__nome = nome
        self.__funcao = funcao

    def get_nome(self):
        return self.__nome

    def set_nome(self, novo_nome):
        self.__nome = novo_nome

    def get_funcao(self):
        return self.__funcao

    def set_funcao(self, nova_funcao):
        self.__funcao = nova_funcao

    def usar_ultimate(self):
        print("Este herói ainda não definiu sua ultimate.")

    def __str__(self):
        return f"Herói {self.__nome} ({self.__funcao})"


class Tanque(Heroi):
    def __init__(self, nome):
        Heroi.__init__(self, nome, "Tanque")

    def usar_ultimate(self):
        print(f"{self.get_nome()} ativou seu escudo e protegeu o time!")


class Dano(Heroi):
    def __init__(self, nome):
        Heroi.__init__(self, nome, "Dano")

    def usar_ultimate(self):
        print(f"{self.get_nome()} lançou uma chuva de balas destruindo os inimigos!")


if __name__ == "__main__":
    
    herois = [
      Tanque("Reinhardt"),
     Dano("Soldado 76")
    ]

    for h in herois:
        print(h)
        h.usar_ultimate()
