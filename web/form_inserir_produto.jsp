<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8" />
        <!-- meta http-equiv="Content-Type" content="text/html; charset=UTF-8" -->
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
	    
	    <input type="submit" value="Cadastrar" />
	</form>
    </body>
</html>
