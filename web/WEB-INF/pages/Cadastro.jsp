<html>
    <head>
        <title>Novo cadastro</title>
        <meta charset="UTF-8">
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/Cadastro.js"></script>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="css/menu.css">
    </head>
        <header>
            <form id="formlogin">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="login" id="caixa_login">
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="Email">Email</label>
                                    <input type="text" class="form-control" id="email">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="Senha">Senha</label>
                                    <input type="password" class="form-control" id="senha">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="Senha_rep">Repetir Senha</label>
                                    <input type="password" class="form-control" id="senha_rep">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </form>
            <form id="formdados">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="minha" id="caixa">
                            <div class="form-row">
                                <div class="form-group col-md-5">
                                    <label for="nome">Nome</label>
                                    <input type="text" class="form-control" id="nome" >
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="cpf">CPF</label>
                                    <input type="number" class="form-control" id="cpf" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label id="documentos" for="documento">Rg</label>
                                    <input type="number" class="form-control" id="documento" >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="nascimento">Data de Nascimento</label>
                                    <input type="date" class="form-control" id="nascimento" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="telefone">Telefone</label>
                                    <input type="number" class="form-control" id="telefone" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="cep">CEP</label>
                                    <input type="number" class="form-control" id="cep" >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-9">
                                    <label for="rua">Rua</label>
                                    <input type="text" class="form-control" id="rua">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="numero">Número</label>
                                    <input type="text" class="form-control" id="numero" >
                                </div>
                                
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="bairro">Bairro</label>
                                    <input type="text" class="form-control" id="bairro" >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="cidade">Cidade</label>
                                    <input type="text" class="form-control" id="cidade" >
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="estado">Estado</label>
                                    <select id="estado" class="form-control" >
                                        <option selected></option>
                                        </select>
                                </div>
                            </div>
                            <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="CadastroAluno">
                                    <label class="form-check-label" for="inlineCheckbox1">Aluno</label>
                                </div>
                                <div class="form-check form-check-inline">
                                     <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="CadastroProfessor">
                                     <label class="form-check-label" for="inlineCheckbox2">Professor</label>
                                </div>
                            <div class="form-row">
                                <div class="col-sm-4"></div>
                                <div class="form-group col-md-3">
                                    <button type="submit" class="btn btn-primary" id="btn_cadastrar">
                                    Cadastrar</button>
                                </div>
                                <div class="form-group col-md-3">
                                    <button type="submit" class="btn btn-primary" id="btn_cancelar">
                                    Cancelar</button>
                                <div class="col-sm-2"></div>
                                </div>
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                    </div>            
                </div>
            </form>
        </header>
</html>
