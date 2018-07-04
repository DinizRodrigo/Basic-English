<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Basic English Login</title>
        <meta charset="utf-8"/>        
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/estilologin.css">
        <title> Basic English - login</title>
        <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/mensagem.js"></script>
        <script type="text/javascript" src="js/validacaologin.js"></script>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        
    </head>
    <body>
        <form name="login" method='post'>
    		<div class="row">
	    		<div class="col-sm-2"></div>
	    		<div class="col-sm-4"><img id="logotipo"  src="img/logo.png"></div>
			  	<div class="col-sm-4">
	    			<div class="jumbotron" name="minha" id="caixa">
			 			<div class="form-group row">
			    			<label for="user" class="col-sm-2 col-form-label">Usuario</label>
			    			<div class="col-sm-10">
			      				<input type="text" class="form-control" id="user" name='user'>
			    			</div>
			  			</div>
			  			<div class="form-group row">
							<label for="Senha" class="col-sm-2 col-form-label">Senha</label>
			    			<div class="col-sm-10">
			      				<input type="password" class="form-control" id="senha" name='senha'>
			    			</div>
			  			</div>
			  			<div class="form-group row">
			  				<button type="submit" class="btn btn-primary" id="btnLogin" >Logar</button>
                                                        <div class="col-sm-7"></div>
                                                        <a class="btn btn-link" href="Cadastro.html" role="button">Cadastre-se</a>
                                                </div>
                                                
                                                    
			  		</div>
			  	</div>
		  		
	  		</div>
		</form>
    </body>
</html>
