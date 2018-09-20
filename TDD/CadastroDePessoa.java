package br.unifacisa.tdd;

public class CadastroDePessoa {
	
	private int idade;
	private String sexo;
	private int salario;
	
	public CadastroDePessoa(int idade, String sexo, int salario) {
		super();
		this.idade = idade;
		this.sexo = sexo;
		this.salario = salario;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public int getSalario() {
		return salario;
	}

	public void setSalario(int salario) {
		this.salario = salario;
	}
	
	
	

}
