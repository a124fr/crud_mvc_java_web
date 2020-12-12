package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProdutoDAO extends DataBaseDAO {
    
    public Produto pesquisarPorId(int id) throws Exception {
	Produto p = new Produto();
	String sql = "SELECT * FROM Produto WHERE id_produto = ?";
	this.conectar();
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setInt(1, id);
	ResultSet rs = ps.executeQuery();
	
	if(rs.next()) {	    
	    p.setId(rs.getInt("id_produto"));	    
	    p.setNome(rs.getString("nome"));
	    p.setDescricao(rs.getString("descricao"));
	    p.setEstoqueAtual(rs.getFloat("estoque_atual"));
	    p.setEstoqueMinimo(rs.getFloat("estoque_min"));
	    p.setValorUnitario(rs.getFloat("valor_unitario"));	    
	}
	
	this.desconectar();	
	return p;
    }
    
    public ArrayList<Produto> listar() throws Exception {
	ArrayList<Produto> lista = new ArrayList<Produto>();
	String sql = "SELECT * FROM Produto";
	this.conectar();
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	
	while(rs.next()) {
	    Produto p = new Produto();
	    p.setId(rs.getInt("id_produto"));	    
	    p.setNome(rs.getString("nome"));
	    p.setDescricao(rs.getString("descricao"));
	    p.setEstoqueAtual(rs.getFloat("estoque_atual"));
	    p.setEstoqueMinimo(rs.getFloat("estoque_min"));
	    p.setValorUnitario(rs.getFloat("valor_unitario"));
	    
	    lista.add(p);
	}
	
	this.desconectar();	
	return lista;
    } 
    
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
    
   public void alterar(Produto produto) throws Exception {
	String sql = "UPDATE Produto SET nome = ?, descricao = ?, estoque_atual = ?, "
		+ "estoque_min = ?, valor_unitario = ? WHERE id_produto = ?";
	this.conectar();	
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, produto.getNome());
	ps.setString(2, produto.getDescricao());
	ps.setFloat(3, produto.getEstoqueAtual());
	ps.setFloat(4, produto.getEstoqueMinimo());
	ps.setFloat(5, produto.getValorUnitario());
	ps.setInt(6, produto.getId());
	ps.execute();
	this.desconectar();
    }
    
    public void excluir(int id) throws Exception {
	String sql = "DELETE FROM Produto WHERE id_produto = ?";
	this.conectar();
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setInt(1, id);
	ps.execute();
	this.desconectar();
    }  
    
}
