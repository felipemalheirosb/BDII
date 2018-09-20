package br.unifacisa.helloworld;

import java.util.Scanner;

public class Main {
	
	public static void main(String args[]) {
		
		Scanner teclado = new Scanner(System.in);
		
		Pessoa pessoaA = new Pessoa();
		pessoaA.setNome("Felipe");
		pessoaA.setIdade(26);
		pessoaA.setCpf("09015904835");
		
		Pessoa pessoaB = new Pessoa();
		pessoaA.setNome("Bitão");
		pessoaA.setIdade(23);
		pessoaA.setCpf("06666666665");
		
		Pessoa pessoaC = new Pessoa();
		pessoaA.setNome("Planeta");
		pessoaA.setIdade(2000000000);
		pessoaA.setCpf("00000000001");
		
		PessoaDAO ListaDePessoas = new ListaPessoaDAO();
		ListaDePessoas.cadastrar(pessoaA);
		ListaDePessoas.cadastrar(pessoaB);
		ListaDePessoas.cadastrar(pessoaC);
		
		System.out.println("Buscar Pessoas: ");
		
		String nomeProcurado = teclado.nextLine();
		Pessoa pessoaProcurada = ListaDePessoas.obterPessoaPor(nomeProcurado);
		System.out.println(pessoaProcurada);
		
	}

}
