package br.unifacisa.helloworld;

import java.util.List;

public interface PessoaDAO {
	
		public void cadastrar(Pessoa pessoa);
		public void remover(Pessoa pessoa);
		public void atualizarNome(Pessoa pessoa, String nome);
		public void atualizarCpf(Pessoa pessoa, String cpf);
		public void atualizarIdade(Pessoa pessoa, String idade);
		public Pessoa obterPessoaPor(String nome);
		public List<Pessoa> todasAsPessoas();
		
	
}
