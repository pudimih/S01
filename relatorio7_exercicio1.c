using System;

public class MembroDaSociedade
{
    private string _nome;
    private string _raca;
    private string _funcao;

    public MembroDaSociedade(string nome, string raca, string funcao)
    {
        this._nome = nome;
        this._raca = raca;
        this._funcao = funcao;
        Console.WriteLine($"o membro {_nome} foi adicionado a Sociedade do Anel.");
    }

    // Método para exibir as informações completas
    public void Descrever()
    {
        Console.WriteLine($"\n--- {_nome} ---");
        Console.WriteLine($"Raça: {_raca}");
        Console.WriteLine($"Função: {_funcao}");
    }
}
public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Sociedade do Anel");

        MembroDaSociedade aragorn = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
        MembroDaSociedade legolas = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");

        aragorn.Descrever();
        legolas.Descrever();

        Console.WriteLine("\n=== Fim da Demonstração ===");
    }
}


