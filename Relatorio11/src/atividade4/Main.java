package atividade4;

public class Main {
    public static void main(String[] args) {
        BossMagico ana = new BossMagico("ana", "01", "banana");
        ana.adicionarAtaque(new PadraoAtaque("faca", 30));
        ana.adicionarAtaque(new PadraoAtaque("garfo", 45));

        Boss golem = new Boss("Golem", "02", "terra");
        golem.adicionarAtaque(new PadraoAtaque("espadada", 40));

        Batalha encontro = new Batalha(null);
        encontro.adicionarBoss(ana);
        encontro.adicionarBoss(golem);

        encontro.iniciarBatalha("01");
        encontro.iniciarBatalha("02");
    }
}
