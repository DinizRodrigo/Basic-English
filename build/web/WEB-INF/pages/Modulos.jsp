<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Gerenciar Modulos</title>
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
            <form id="form_acao" method = "post">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="acao" id ="caixa_acao">
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-3">     
                                    <button type="button" class="btn btn-success" id="btn_incluir">Incluir Modulo</button>
                                </div>
                                <div class="form-group col-md-3">
                                    <button type="button" class="btn btn-primary" id="btn_atualizar">Atualizar Modulo</button>
                                </div>
                                <div class="form-group col-md-3">
                                    <button type="button" class="btn btn-danger" id="btn_remover">Remover Modulo</button>
                                </div>
                                <div class="form-group col-md-2"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>

                <div class="col-sm-2"></div> 
            </form>
            <form id="formquestao" method = "post">
                <input style="display: none" name="incluir"/>
                <div class="row">
                   <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="modulo" id ="caixa_modulo">
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-8">
                                    <label for="enunciado">Nome Modulo </label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Digite aqui</span>
                                        </div>
                                            <textarea class="form-control" aria-label="Digite aqui" name="modulo" id="modulo"></textarea>
                                    </div>
                                </div> 
                                <div class="form-group col-md-2"></div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-2">
                                        <script> 
                                            function inclusao() {
                                                alert ("Incluido com sucesso");}
                                        </script>
                                        <button type="submit" class="btn btn-primary" id="btn_incluir_mo" onclick="inclusao()">Incluir</button>
                                </div>
                                <div class="form-group col-md-1"></div>
                                <div class="form-group col-md-3">
                                    <button type="button" class="btn btn-danger" id="btn_excluir_mo">Descartar</button>
                                </div>
                                <div class="form-group col-md-1"></div>
                                <div class="form-group col-md-3">
                                    <button type="button" class="btn btn-success" id="btn_salvar_mo">Salvar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="col-sm-2"></div>
                </div>
            </form>
            <form id="form_excluir" method = "post">
                <input style="display: none" name="excluir"/>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="modulo_existente" id ="moduloex">
                            <div class="form-row">
                                <div class="form-group col-md-3" method="get">
                                    <table class="table" id="tb_modulos" >
                                      <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Modulos existentes</th>
                                            <th scope="col">Excluir?</th>
                                        </tr>
                                      </thead>
                                        <tbody id="modulos_existentes"> 
                                            <c:forEach  items="${modulos}" var="modulo">
                                                <tr>
                                                    <td id="td_idmodulos">${modulo.id} </td>
                                                    <td id="td_modulos">${modulo.nomemodulo} </td>
                                                    <td> <input type="checkbox" name="delete-${modulo.id}"></td>
                                                </tr>
                                             </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-3">
                                    <script> 
                                        function exclusao() {
                                            alert ("Excluido com sucesso");}
                                    </script>
                                    <button type="submit" class="btn btn-danger" id="btn_excluir" onclick="exclusao()">Excluir</button>
                                </div>
                                <div class="form-group col-md-2"></div>
                            </div>
                            </div>
                        </div>
                    <div class="col-sm-2"></div>
                </div> 
            </form>

                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="jumbotron" name="modulo_existente" id ="moduloex">
                            <div class="form-row">
                                <div class="form-group" method="get">
                                    <table class="table" id="tb_modulos" >
                                      <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Modulos existentes</th>
                                            <th scope="col">Atualizar?</th>
                                        </tr>
                                      </thead>
                                        <tbody id="modulos_existentes"> 
                                            <c:forEach  items="${modulos}" var="modulo">
                                                <tr>
                                                    <form id="form_atualizar" method = "post">
                                                        <input style="display: none" name="atualizar"/>
                                                        <td id="td_idmodulos">${modulo.id} </td>
                                                        <td id="td_modulos">${modulo.nomemodulo} </td>
                                                        <td>
                                                            <input type="radio"  name="podeAtualizar"> 
                                                            <input style="display: none" type="text"  name="modulo-id" value="${modulo.id}">
                                                            <div class="input-group mb-3">
                                                                <input type="text" class="form-control" placeholder="Novo nome do modulo" name="novoNome">
                                                                    <div class="input-group-append">
                                                                        <button class="btnbtn-success" type="submit">Atualizar</button>
                                                                    </div>
                                                            </div>
                                                        </td>    
                                                    </form>    
                                                </tr>
                                             </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--<div class="form-row">
                                <div class="form-group col-md-2"></div>
                                <div class="form-group col-md-3">
                                    <button type="submit" class="btn btn-success" id="btn_atualizarModulo">Atualizar</button>
                                </div>
                                <div class="form-group col-md-2"></div>
                            </div>-->
                            </div>
                        </div>
                    <div class="col-sm-2"></div>
                </div> 
            
        </header>
    </body>
</html>
