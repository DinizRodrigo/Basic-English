jQuery( function(){
	var x = 3;
	if(x != 3){
		$('#divmenu').load('menu_aluno.html');
	}
	else{
		$('#divmenu').load('menu_professor.html');
	}


});

