from abc import ABC, abstractmethod
    
class Personagem:
    def __init__(self, resistencia: int, vida: int):
        self._vida = vida 
        self._resistencia = resistencia
        
   
    def vida(self):
        return self._vida

    def set_vida(self, nova_vida):
        if nova_vida >= 0:
            self._vida = nova_vida
        else:
            print("A vida não pode ser negativa!")
            
    def get_resistencia(self):
        return self.__resistencia

    def set_resistencia(self, nova_resistencia):
        if nova_resistencia >= 0:
            self.__resistencia = nova_resistencia
        else:
            print("A resistência não pode ser negativa.")

    def __str__(self):
        return f"Personagem com {self.__vida} de vida e {self.__resistencia} de resistência"


class cavaleiro(Personagem):
    def __init__(self, vida, resistencia, armadura_pesada):
        Personagem.__init__(self, vida, resistencia)
        self.__armadura_pesada = armadura_pesada 

    def get_armadura_pesada(self):
        return self.__armadura_pesada

    def set_armadura_pesada(self, valor):
        self.__armadura_pesada = valor

    def __str__(self):
        return f"Cavaleiro com {self.get_vida()} de vida, {self.get_resistencia()} de resistência e armadura pesada: {self.__armadura_pesada}"


