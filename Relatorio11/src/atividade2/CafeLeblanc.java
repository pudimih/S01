package atividade2;

public class CafeLeblanc {
    private final Menu menu;

    public CafeLeblanc(Menu menu) {
        if (menu == null) {
            throw new IllegalArgumentException("Menu não pode ser nulo.");
        }
        this.menu = menu;
    }

    public void receberPedido(Cafe cafe) {
        System.out.printf("Pedido recebido: %s | Preço: R$ %.2f%n",
                cafe.getNome(), cafe.calcularPrecoFinal());
    }

    public Menu getMenu() {
        return menu;
    }
}
