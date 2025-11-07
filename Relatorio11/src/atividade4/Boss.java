package atividade4;

import java.util.LinkedHashSet;

public class Boss {
    private String nome;
    private String id;
    private String pontoFraco;
    private final LinkedHashSet<PadraoAtaque> ataques = new LinkedHashSet<>();

    public Boss(String nome, String id, String pontoFraco) {
        this.nome = nome;
        this.id = id;
        this.pontoFraco = pontoFraco;
    }

    public String getNome() { 
        return nome; 
    }
    public String getId() { 
        return id; 
    }

    public String getPontoFraco() { 
        return pontoFraco; 
    }

    public void adicionarAtaque(PadraoAtaque ataque) {
        if (ataque != null) ataques.add(ataque);
    }

    public void iniciarFase() {
        System.out.println("\nFase do Boss: " + nome + " (ID " + id + ")");
        System.out.println("Ponto fraco: " + pontoFraco);
        System.out.println("Moveset:");
        for (PadraoAtaque a : ataques) {
            System.out.println(" - " + a);
        }
        System.out.println("Prepare-se para a batalha!\n");
    }
}
