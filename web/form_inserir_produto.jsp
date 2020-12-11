<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo Produto</title>
</head>
<body>
    <h1>Novo Produto</h1>

    <form method="POST" action="inserir_produto.do">	    
	<div>
	    <label>
		Nome: <br/>
		<input type="text" name="nome" />
	    </label>
	</div>	

	<div>
	    <label>
		Descrição: <br/>
		<input type="text" name="descricao" />
	    </label>
	</div>

	<div>	        
	    <label>
		Estoque Atual: <br/>
		<input type="text" name="estoque_atual" />
	    </label>
	</div>

	<div>
	    <label>
		Estoque Mínimo:<br/>
		<input type="text" name="estoque_minimo" />
	    </label>
	</div>

	<div>
	    <label>
		Valor Unitário:<br/>
		<input type="text" name="valor_unitario" />
	    </label>
	</div>	

	<input type="submit" value="Cadastrar" /> <a href="listar_produto.jsp">Voltar</a>
    </form>
</body>
</html>
