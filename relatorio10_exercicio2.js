class IDescobridor {
	explorarZona() {
		throw new Error(`A zona precisa ser explorada primeiro`);
	}
}

class Propulsor3D {
	#combustivelAtual

	constructor(versao) {
		this.versao = versao;
		this.#combustivelAtual = 100;
	}

	consumirCombustivel(qtd) {
		this.#combustivelAtual -= qtd;
	}

	obterCombustivel() {
		return this.#combustivelAtual;
	}
}

class Patrulheiro extends IDescobridor {

	#equipamento

	constructor(nome, versaoEquipamento) {
		super();
		this.nome = nome;
		this.#equipamento = new Propulsor3D(versaoEquipamento);
	}

	explorarZona() {
		this.#equipamento.consumirCombustivel(20);
		return `Patrulheiro ${this.nome} verificou a área. Combustível restante: ${this.#equipamento.obterCombustivel()}%`;
	}

	checarEquipamento() {
		return `Equipamento ${this.#equipamento.versao} de ${this.nome} possui ${this.#equipamento.obterCombustivel()}% de combustível`;
	}

}

class Unidade extends IDescobridor {
	constructor(comandante, integrantesIniciais = []) {
		super();
		this.comandante = comandante;
		this.integrantes = [comandante, ...integrantesIniciais];
	}

	explorarZona() {
		const logs = this.integrantes.map(i => i.explorarZona());
		return `Relatório de Exploração:\n- ${logs.join("\n- ")}`;
	}

	adicionarIntegrante(patrulheiro) {
		this.integrantes.push(patrulheiro);
	}

	exibirStatus() {
		return this.integrantes.map(i => i.checarEquipamento());
	}
}

const marco = new Patrulheiro("Marco", "V-3");
const petra = new Patrulheiro("Petra", "V-3");
const connie = new Patrulheiro("Connie", "V-2");

const unidade = new Unidade(marco, [petra]);

console.log(unidade.exibirStatus());
console.log(unidade.explorarZona());
console.log(unidade.exibirStatus());

unidade.adicionarIntegrante(connie);
console.log("Novo integrante adicionado!");

console.log(unidade.exibirStatus());
console.log(unidade.explorarZona());
console.log(unidade.exibirStatus());
