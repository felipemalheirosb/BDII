package br.unifacisa.helloworld;

import java.util.ArrayList;
import java.util.List;

public class ListaPessoaDAO implements PessoaDAO{
		
	private List<Pessoa> pessoas = new ArrayList<Pessoa>();
	
	public void cadastrar(Pessoa pessoa) {
		
		if(pessoa != null) {
			pessoas.add(pessoa);
		}
	}
	
	public void remover(Pessoa pessoa) {
		
		if(pessoa != null) {
			pessoas.remove(pessoa);			
		}
	}
	
	public void atualizarNome(Pessoa pessoa, String nome) {
		
		if(pessoas.contains(pessoa)){
			pessoa.setNome(nome);
		}
	}
	
	public void atualizarCpf(Pessoa pessoa, String cpf) {
		
		if(pessoas.contains(pessoa)){
			pessoa.setNome(cpf);
		}
	}
	
	public void atualizarIdade(Pessoa pessoa, String idade) {
		
		if(pessoas.contains(pessoa)){
			pessoa.setNome(idade);
		}
	}
	
	
	public Pessoa obterPessoaPor(String nome) {
		
		
		
		for(Pessoa index : pessoas) {
			if(index.getNome() == nome) {
				return index;
			}
		}
		return null;
		
	}
	
	public List<Pessoa> todasAsPessoas(){
		
		return pessoas;
	}
}
