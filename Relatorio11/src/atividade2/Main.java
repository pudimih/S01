package atividade2;

import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        Cafe expresso = new Cafe("Expresso", 7.50);
        CafeGourmet blueMountain = new CafeGourmet("Cafeteira Italiana", 14.00, 3.50);

        Menu menu = new Menu(Arrays.asList(expresso));
        menu.adicionarItem(blueMountain);

        CafeLeblanc leblanc = new CafeLeblanc(menu);

        System.out.println(menu);
        leblanc.receberPedido(expresso);
        leblanc.receberPedido(blueMountain);
    }
}
