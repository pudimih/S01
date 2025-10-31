class IRastreavel {
	rastrearLocal(lat, lon) {
		throw new Error("Método abstrato: rastrearLocal precisa ser implementado.");
	}
}

class Cacador extends IRastreavel {
	#nome
	#idade
	#local

	constructor(nome, local, idade) {
		super();
		this.#nome = nome;
		this.#local = local;
		this.#idade = idade;
	}

	getNome() {
		return this.#nome;
	}

	atualizarLocal(lat, lon) {
		this.#local = `${lat},${lon}`;
	}
}

class EspecialistaNen extends Cacador {
	#poder

	constructor(nome, local, idade, poder) {
		super(nome, local, idade);
		this.#poder = poder;
	}

	rastrearLocal(lat, lon) {
		this.atualizarLocal(lat, lon);
		return `Especialista ${this.getNome()} detectou movimento em (${lat}, ${lon}) usando Nen: ${this.#poder}`;
	}
}

class ManipuladorAura extends Cacador {
	#alvo

	constructor(nome, local, idade, alvo) {
		super(nome, local, idade);
		this.#alvo = alvo;
	}

	rastrearLocal(lat, lon) {
		this.atualizarLocal(lat, lon);
		return `Manipulador ${this.getNome()} rastreou o alvo ${this.#alvo} em (${lat}, ${lon})`;
	}
}

class Divisao {
	#membros

	constructor() {
		this.#membros = new Set();
	}

	adicionar(cacador) {
		for (const m of this.#membros) {
			if (m.getNome() === cacador.getNome()) {
				console.log("⚠️ Cacador duplicado ignorado");
				return;
			}
		}
		this.#membros.add(cacador);
	}

	tamanho() {
		return this.#membros.size;
	}

	executarRastreamento(lat, lon) {
		const log = [];
		for (const m of this.#membros) {
			log.push(m.rastrearLocal(lat, lon));
		}
		return log;
	}
}

const gon = new EspecialistaNen("Gon", "Montanha", 14, "Jajanken");
const hisoka = new ManipuladorAura("Hisoka", "Arena", 28, "Illumi");
const divisao = new Divisao();

divisao.adicionar(gon);
divisao.adicionar(hisoka);
divisao.adicionar(gon);

console.log(divisao.executarRastreamento(-23.56, -46.64));
