class Criatura {
	#energia

	constructor(nome, elemento, energiaInicial) {
		this.nome = nome;
		this.elemento = elemento;
		this.#energia = energiaInicial;
	}

	obterEnergia(){
		return this.#energia
	}

	sofrerDano(qtdDano) {
		if (this.#energia - qtdDano > 0){
			this.#energia -= qtdDano
		}else{
			this.#energia = 0
		}
		return this.#energia
	}

	golpear(inimigo){
		console.log(`A criatura ${this.nome} atacou ${inimigo.nome}!`);
	}
}

class CriaturaFogo extends Criatura {
	constructor(nome, energiaInicial, poderExtra) {
		super(nome, "Fogo", energiaInicial);
		this.poderExtra = poderExtra;
	}
	
	golpear(inimigo){
		console.log(` ${this.nome} lançou Brasas em ${inimigo.nome}!`);
		inimigo.sofrerDano(100 + this.poderExtra);
	}
}

class CriaturaAgua extends Criatura {

	#curaPadrao

	constructor(nome, energiaInicial, curaPadrao) {
		super(nome, "aGua", energiaInicial);
		this.#curaPadrao = curaPadrao;
	}

	golpear(inimigo){
		console.log(`${this.nome} lançou Jato Digua em ${inimigo.nome}!`);
		inimigo.sofrerDano(75 * 1.6);
	}
}

const vaporeon = new CriaturaAgua("Vaporeon", 230, 10);
const flareon = new CriaturaFogo("Flareon", 210, 5);

vaporeon.golpear(flareon);
console.log("Energia restante de Flareon:", flareon.obterEnergia());
