using System;
using System.Collections.Generic;

public class Feitico
{
    public string Nome { get; set; }

    public Feitico(string nome)
    {
        this.Nome = nome;
        Console.WriteLine($"{Nome} foi aprendido.");
    }
}

public class Grimorio
{
    private List<Feitico> _feiticos;

    public Grimorio()
    {
        _feiticos = new List<Feitico>();
        Console.WriteLine("Um novo grimório foi criado.");
    }

    public void AdicionarFeitico(Feitico f)
    {
        _feiticos.Add(f);
        Console.WriteLine($"Feitiço {f.Nome} adicionado ao grimório.");
    }

    public void MostrarFeiticos()
    {
        Console.WriteLine("\nFeitiços no grimório:");
        foreach (var f in _feiticos)
        {
            Console.WriteLine($"- {f.Nome}");
        }
    }
}

public class Ferramenta
{
    public string Nome { get; set; }

    public Ferramenta(string nome)
    {
        this.Nome = nome;
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio GrimorioPessoal { get; private set; }
    private List<Ferramenta> _ferramentas;

    public Maga(string nome, List<Ferramenta> ferramentas)
    {
        this.Nome = nome;
        this.GrimorioPessoal = new Grimorio(); // composição
        this._ferramentas = ferramentas;       // agregação
        Console.WriteLine($"\n{Nome} iniciou sua jornada.");
    }

    public void MostrarFerramentas()
    {
        Console.WriteLine($"\nFerramentas de {Nome}:");
        foreach (var f in _ferramentas)
        {
            Console.WriteLine($"- {f.Nome}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Jornada de Frieren ===");

        List<Ferramenta> ferramentas = new List<Ferramenta>();
        ferramentas.Add(new Ferramenta("Capacete"));
        ferramentas.Add(new Ferramenta("Lanterna"));
        ferramentas.Add(new Ferramenta("Mapa Antigo"));

        Maga frieren = new Maga("Frieren", ferramentas);

        frieren.GrimorioPessoal.AdicionarFeitico(new Feitico("Raio Mágico"));
        frieren.GrimorioPessoal.AdicionarFeitico(new Feitico("Escudo Arcano"));

        frieren.GrimorioPessoal.MostrarFeiticos();
        frieren.MostrarFerramentas();

    }
}

