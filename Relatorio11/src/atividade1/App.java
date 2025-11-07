import java.util.ArrayList;

public class App {
    public static void main(String[] args) {
        
        mago mago1 = new mago("luis", 19, "gigolo de fogo");
        System.out.println(mago1.lancarFeitico()); 

        divisao torre = new divisao("Torre Principal");

        ArrayList<divisao> divisoes = new ArrayList<>();
        divisoes.add(torre);

        castelo castelo = new castelo("sANTA rita do sapucai", divisoes);

        divisao biblioteca = new divisao("Biblioteca");
        castelo.adicionarDivisao(biblioteca);

        System.out.println("O castelo " + castelo.getNome() + " possui " + castelo.getDivisoes().size() + " divisoes!");
    }
}
