using System;

public abstract class MonstroSombrio
{
    public string nome { get; set; }

    public MonstroSombrio(string nome)
    {
        this.nome = nome;
    }

    public abstract void Mover();
}

public class Zumbi : MonstroSombrio
{
    public Zumbi(string nome) : base(nome) { }

    public override void Mover()
    {
        Console.WriteLine($"{nome} anda lentamente arrastando os pés...");
    }
}

public class Espectro : MonstroSombrio
{
    public Espectro(string nome) : base(nome) { }

    public override void Mover()
    {
        Console.WriteLine($"{nome} flutua rapidamente pelo ar...");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        MonstroSombrio[] horda = new MonstroSombrio[2];
        horda[0] = new Zumbi("Zumbi Lento");
        horda[1] = new Espectro("Espectro Sombrio");

        foreach (var m in horda)
        {
            m.Mover();
        }
    }
}
