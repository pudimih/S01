using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Nome { get; set; }

    public Pokemon(string nome)
    {
        this.Nome = nome;
        Console.WriteLine($"o Pokemon {Nome} foi criado!");
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{Nome} usa um ataque genérico!");
    }
}

public class PokemonDeFogo : Pokemon
{
    public PokemonDeFogo(string nome) : base(nome) { }

    public override void Atacar()
    {
        Console.WriteLine($"{Nome} lança um jato de fogo");
    }
}

public class PokemonDeAgua : Pokemon
{
    public PokemonDeAgua(string nome) : base(nome) { }

    public override void Atacar()
    {
        Console.WriteLine($"{Nome} lança um jato de agua");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        List<Pokemon> listaPokemons = new List<Pokemon>();

        Pokemon charizard = new PokemonDeFogo("carizard");
        Pokemon blastoise = new PokemonDeAgua("blastoise");

        listaPokemons.Add(charizard);
        listaPokemons.Add(blastoise);

        foreach (var p in listaPokemons)
        {
            p.Atacar();
        }
    }
}
