public class mago extends personagem {
    private String magia;

    public mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    public String getmagia() {
        return magia;
    }

    public void setmagia(String magia) {
        this.magia = magia;
    }

    public String lancarFeitico() {
        return getNome() + " lancou o feitico " + magia;
    }

    
}
