package atividade2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Menu {
    private final ArrayList<Cafe> itens;

    public Menu(List<Cafe> itens) {
        this.itens = new ArrayList<>();
        if (itens != null) {
            this.itens.addAll(itens);
        }
    }

    public void adicionarItem(Cafe cafe) {
        if (cafe != null) {
            itens.add(cafe);
        }
    }

    public List<Cafe> getItens() {
        return Collections.unmodifiableList(itens);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("Menu:\n");
        for (Cafe c : itens) {
            sb.append(" - ").append(c).append('\n');
        }
        return sb.toString();
    }
}
