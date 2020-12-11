package model;

import java.sql.PreparedStatement;

public class ProdutoDAO extends DataBaseDAO {
    
    public void inserir(Produto produto) throws Exception {
	String sql = "INSERT INTO Produto(nome, descricao, estoque_atual, "
		+ "estoque_min, valor_unitario)VALUES(?, ?, ?, ?, ?)";
	this.conectar();	
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, produto.getNome());
	ps.setString(2, produto.getDescricao());
	ps.setFloat(3, produto.getEstoqueAtual());
	ps.setFloat(4, produto.getEstoqueMinimo());
	ps.setFloat(5, produto.getValorUnitario());
	ps.execute();
	this.desconectar();
    }
}
