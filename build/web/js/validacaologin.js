var email_t;
var senha_t;

function formarLogin(){
    var requisicao = new XMLHttpRequest;

    /*url = '../ServidorGolpeCerto/testes/login.json';*/
    requisicao.open('GET', url, true);

    function onReadyStateChange () {
        if (requisicao.readyState === 4 && requisicao.status === 200) {
            var JSONObjeto = JSON.parse(requisicao.responseText);
            email_t = JSONObjeto["email"];
            senha_t = JSONObjeto["senha"];

            enviarLogin();
        }
    }
    requisicao.addEventListener('readystatechange', onReadyStateChange);
    requisicao.send();

}

function enviarLogin(){
    
    var email = login.email.value;
    var senha = login.senha.value;

    if (!isEmailValido(email)){
        erro("Preencha o email corretamente","#caixa");
        login.email.focus();
    }else if (senha==""){
        erro("Campo Senha obrigatório!","#caixa");
        login.senha.focus();
    }
    else if (senha.length<4){
        erro("Mínimo 5 caracteres no campo Senha","#caixa");
        login.senha.focus();
    }
    else if (senha.length>=150){
        erro("Limite de caracteres preenchido no campo senha","#caixa");
        login.senha.focus();
    }
    else if(senha_t === senha && email_t === email){
        window.location.href = 'principal.html';
        //login.submit();
    }else{
        erro("Email e/ou senha errados","#caixa");
    }
}

function isEmailValido(email){
    var regex = /^[a-z0-9.]+@[a-z0-9]+\.[a-z]+(\.[a-z]+)?$/i;
    if (!regex.test(email)){
            return false;
    }else{
        return true;
    }
}
