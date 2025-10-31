class Entidade {
	constructor(nome, perigosa) {
		this.nome = nome;
		this.perigosa = perigosa;
	}
}

class DiarioSecreto {
	#autorSecreto
	enigmas
	avistamentos

	constructor(autor) {
		this.#autorSecreto = autor;
		this.enigmas = new Map();
		this.avistamentos = [];
	}

	obterAutor() {
		return this.#autorSecreto;
	}

	registrarEnigma(indice, texto) {
		this.enigmas.set(indice, texto);
	}

	decodificarEnigma(chave, indice) {
		if (chave !== this.#autorSecreto) {
			return `Acesso negado: chave inválida`;
		}

		const enigma = this.enigmas.get(indice);
		if (!enigma) {
			return `Nenhum enigma cadastrado com o índice ${indice}`;
		}

		const decodificado = enigma.split("").reverse().join("").toUpperCase();
		return `Decodificação (${chave} | ${indice}): ${decodificado}`;
	}
}

class Pessoa {
	constructor(nome, idade) {
		this.nome = nome;
		this.idade = idade;
	}
}

class Narrador extends Pessoa {
	diario

	constructor(nome, idade, diario) {
		super(nome, idade);
		this.diario = diario;
	}
}

class CabanaMisteriosa {
	#staff

	constructor(diario) {
		this.diario = diario;
		this.visitantes = [];
		this.#staff = [];
	}

	contratar(funcionario) {
		this.#staff.push(funcionario);
	}

	listarFuncionarios() {
		return [...this.#staff];
	}
}

const diario = new DiarioSecreto("DIPPER");
diario.registrarEnigma(1, "waddles found");
diario.registrarEnigma(2, "bill cipher returns");

const dipper = new Narrador("Dipper", 12, diario);
const mabel = new Pessoa("Mabel", 12);
const soos = new Pessoa("Soos", 22);
const wendy = new Pessoa("Wendy", 15);

const cabana = new CabanaMisteriosa(diario);
cabana.contratar(soos);
cabana.contratar(wendy);

console.log("Funcionários:", cabana.listarFuncionarios().map(f => f.nome));
console.log("Decodificar (chave errada):", diario.decodificarEnigma("errada", 1));
console.log("Decodificar (chave certa):", diario.decodificarEnigma("DIPPER", 1));
