package model;

public class Produto {
    private int id;
    private String nome;
    private String descricao;
    private float estoqueAtual;    
    private float estoqueMinimo;
    private float valorUnitario;

    public int getId() {
	return id;
    }

    public void setId(int id) {
	this.id = id;
    }

    public String getNome() {
	return nome;
    }

    public void setNome(String nome) {
	this.nome = nome;
    }

    public String getDescricao() {
	return descricao;
    }

    public void setDescricao(String descricao) {
	this.descricao = descricao;
    }

    public float getEstoqueAtual() {
	return estoqueAtual;
    }

    public void setEstoqueAtual(float estoqueAtual) {
	this.estoqueAtual = estoqueAtual;
    }

    public float getValorUnitario() {
	return this.valorUnitario;
    }

    public void setValorUnitario(float valorUnitario) {
	this.valorUnitario = valorUnitario;
    }

    public float getEstoqueMinimo() {
	return estoqueMinimo;
    }

    public void setEstoqueMinimo(float estoqueMinimo) {
	this.estoqueMinimo = estoqueMinimo;
    }
    
}
