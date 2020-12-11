<%@page import="model.ProdutoDAO"%>
<%@page import="model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Produto> lista = new ArrayList<Produto>();
    try {
	ProdutoDAO produtoDao = new ProdutoDAO();
	lista = produtoDao.listar();	    
    }
    catch(Exception e) {
	out.println("ERRO: " + e);
    }

%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Produtos</title>
    <style>
	.link {
	    text-decoration:none;
	}	
    </style>
    <script>
	function excluir(id, nomeProduto) {
	    if(confirm("Deseja realmente excluir o produto " + nomeProduto + "?")) {
		window.open("excluir_produto.do?id="+id, "_self");
	    }
	}
    </script>
</head>
<body>
    <h1>Lista de Produtos <a class="link" href="form_inserir_produto.jsp"><img src="assets/images/add.png" alt="" border="0" /></a> </h1>
        
    <%
	if(lista.size() > 0) {
    %>
	    <table border="1">
		<thead>
		    <tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Descrição</th>
			<th title="Estoque Atual">Est. Atual</th>
			<th title="Estoque Minímo">Est. Minímo</th>
			<th title="Valor Unitário">Valor Unit.</th>
			<th>Ações</th>
		    </tr>
		</thead>
    		<tbody>
    <%
	for(Produto p:lista){
    %>
		    <tr>
			<td><%=p.getId()%></td>
			<td><%=p.getNome()%></td>
			<td><%=p.getDescricao()%></td>
			<td><%=p.getEstoqueAtual()%></td>
			<td><%=p.getEstoqueMinimo()%></td>
			<td><%=p.getValorUnitario()%></td>
			<td align="center">
			    <a href="#" class="link">
				<img src="assets/images/edit.png" alt="" border="0" />
			    </a>
			    <a href="#" onclick="excluir(<%=p.getId()%>, '<%=p.getNome()%>');" class="link">
				<img src="assets/images/delete.png" alt="" border="0" />
			    </a>
			</td>
		    </tr>
    <%
	}
    %>
		</tbody>
	    </table>
    <%
	} else {
    %>
	    <h2>Nenhum produto cadastrado!</h2>
    <%
	}
    %>
    
    <a href="index.jsp">Voltar</a>
</body>
</html>
