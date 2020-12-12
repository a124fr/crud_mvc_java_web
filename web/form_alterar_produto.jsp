<%@page import="model.ProdutoDAO"%>
<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Produto produto = new Produto();
    try{
	int id = Integer.parseInt(request.getParameter("id"));
	ProdutoDAO pDAO = new ProdutoDAO();
	produto = pDAO.pesquisarPorId(id);
    }catch(Exception e) {
	out.println("ERRO: " + e);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>Alterar Produto</h1>

    <form method="POST" action="alterar_produto.do">	 
	<div>
	    <label> Id: <%=produto.getId()%>
	    </label>
	</div>	
	<input type="hidden" name="id" value="<%=produto.getId()%>" />
	<div>
	    <label>
		Nome: <br/>
		<input type="text" name="nome" value="<%=produto.getNome()%>" />
	    </label>
	</div>	

	<div>
	    <label>
		Descrição: <br/>		
		<textarea name="descricao"><%=produto.getDescricao()%></textarea>
	    </label>
	</div>

	<div>	        
	    <label>
		Estoque Atual: <br/>
		<input type="text" name="estoque_atual" value="<%=produto.getEstoqueAtual()%>" />
	    </label>
	</div>

	<div>
	    <label>
		Estoque Mínimo:<br/>
		<input type="text" name="estoque_minimo" value="<%=produto.getEstoqueMinimo()%>" />
	    </label>
	</div>

	<div>
	    <label>
		Valor Unitário:<br/>
		<input type="text" name="valor_unitario" value="<%=produto.getValorUnitario()%>" />
	    </label>
	</div>	

	<input type="submit" value="Alterar" /> <a href="listar_produto.jsp">Voltar</a>
    </form>
    </body>
</html>
