var modulo_selecionado;

window.onload= function(){
    formquestao.style.display="none";
    form_acao.btn_incluir.onclick = function(){
    formquestao.style.display = "inline";
    form_excluir.style.display = "none";
    form_att.style.display = "none";
    };   
   
    form_excluir.style.display="none";
    form_acao.btn_remover.onclick = function(){
    form_excluir.style.display = "inline";
    formquestao.style.display = "none";
    form_att.style.display = "none";
       };
       
    form_att.style.display="none";
    form_acao.btn_atualizar.onclick = function(){
    form_att.style.display = "inline";
    formquestao.style.display = "none";
    form_excluir.style.display = "none";
       };
       
   $("#tb_modulo > tbody > tr").on("click", function (e) {
	    $(this).siblings().removeClass("ativo");
	    $(this).toggleClass("ativo");
	    modulo_selecionado = $(this).find("#td_modulo").text();
});

};


 
    