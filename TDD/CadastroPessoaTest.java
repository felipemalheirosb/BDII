package br.unifacisa.tdd;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CadastroPessoaTest {
	
	@Test
	public void CadastroDePessoaTest(){
		CadastroDePessoa pessoa = new CadastroDePessoa(18,"Feminino",5000);
		assertEquals(18, pessoa.getIdade());
		assertEquals("Feminino", pessoa.getSexo());
		assertEquals(5000, pessoa.getSalario());
		
	}

}
