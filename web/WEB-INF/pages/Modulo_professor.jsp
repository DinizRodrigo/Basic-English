<html>
    <head>
        <title>Gerenciar exercicios</title>
        <meta charset="UTF-8">
        <link rel = "stylesheet" type = "text/css" href = "css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/modulo_professor.js"></script>
        <link rel="stylesheet" type="text/css" href="css/estilo_professor.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="css/menu.css">
    </head>
    <body>
        <header>
            <div id="divmenu"></div>
            <form id="form_acao">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="acao" id ="caixa_acao">
                            <div class="form-row">
                                <div class="form-group col-md-5"></div>
                                <div class="form-group col-md-2">
                                    <button type="button" class="btn btn-success" id="btn_incluir">Incluir Modulo</button>
                                </div>
                                </div>
                                <div class="form-group col-md-4"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>

                <div class="col-sm-2"></div> 
            </form>
            <form id="formquestao">
                <div class="row">
                   <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="questao" id ="caixa_questao">
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-8">
                                    <label for="enunciado">Enunciado </label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Digite aqui</span>
                                        </div>
                                            <textarea class="form-control" aria-label="Digite aqui" id="enunciado"></textarea>
                                    </div>
                                </div> 
                                <div class="form-group col-md-2"></div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-8">
                                    <label for="enunciado">Resposta Correta </label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Digite aqui</span>
                                        </div>
                                            <textarea class="form-control" aria-label="Digite aqui" id="resp_correta"></textarea>
                                    </div>
                                </div> 
                                <div class="form-group col-md-2"></div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-8">
                                    <label for="enunciado">Resposta incorreta 1 </label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Digite aqui</span>
                                        </div>
                                            <textarea class="form-control" aria-label="Digite aqui" id="incorreta1"></textarea>
                                    </div>
                                </div> 
                                <div class="form-group col-md-2"></div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-8">
                                    <label for="enunciado">Resposta incorreta 2 </label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Digite aqui</span>
                                        </div>
                                            <textarea class="form-control" aria-label="Digite aqui" id="incorreta2"></textarea>
                                    </div>
                                </div> 
                                <div class="form-group col-md-2"></div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-8">
                                    <label for="enunciado">Resposta incorreta 3 </label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Digite aqui</span>
                                        </div>
                                            <textarea class="form-control" aria-label="Digite aqui" id="incorreta3"></textarea>
                                    </div>
                                </div> 
                                <div class="form-group col-md-2">
                                    <select name=incluir_modulo id='incluir_modulo'>
                                        <option> abc </option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-2">
                                    <button type="button" class="btn btn-primary" id="btn_incluir_ex">Incluir</button>
                                </div>
                                <div class="form-group col-md-1"></div>
                                <div class="form-group col-md-3">
                                    <button type="button" class="btn btn-danger" id="btn_excluir_ex">Descartar</button>
                                </div>
                                <div class="form-group col-md-1"></div>
                                <div class="form-group col-md-3">
                                    <button type="button" class="btn btn-success" id="btn_salvar_ex">Salvar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="col-sm-2"></div>
                </div>
            </form>
            <form id="form_excluir">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="modulo_existente" id ="moduloex">
                            <div class="form-row">
                                <div class="form-group col-md-3" method="get">
                                    <table class="table" id="tb_modulos">
                                      <thead class="thead-dark">
                                            <th scope="col">Modulos existentes</th>
                                        </tr>
                                      </thead>
                                      <tbody id="modulos_existentes">
                                        <tr>
                                          <td id="td_modulos">CAP 1</td>
                                        </tr>
                                        <tr>
                                          <td id="td_modulos">CAP 2</td>
                                        </tr>
                                        <tr>
                                          <td id="td_modulos">CAP 3 </td>
                                        </tr>
                                      </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-3">
                                    <button type="button" class="btn btn-danger" id="btn_excluir">Excluir</button>
                                </div>
                                <div class="form-group col-md-2"></div>
                            </div>
                            </div>
                        </div>
                    <div class="col-sm-2"></div>
                </div> 
            </form>
        </header>
    </body>
</html>
