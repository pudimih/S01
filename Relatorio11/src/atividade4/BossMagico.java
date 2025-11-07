package atividade4;

public class BossMagico extends Boss {

    public BossMagico(String nome, String id, String pontoFraco) {
        super(nome, id, pontoFraco);
    }

    @Override
    public void iniciarFase() {
        System.out.println("\n✨ Uma aura arcana envolve a arena...");
        super.iniciarFase();
    }
}