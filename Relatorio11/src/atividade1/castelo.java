import java.util.ArrayList;

public class castelo {
    private String nome;
    private ArrayList<divisao> divisoes;

    public castelo(String nome, ArrayList<divisao> divisoes) {
        this.nome = nome;
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(divisao divisao) {
        divisoes.add(divisao);
    }
    
    public String getNome() {
        return nome;
    }

    public ArrayList<divisao> getDivisoes() {
        return divisoes;
    }


}
