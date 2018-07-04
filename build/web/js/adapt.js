window.onload = function(){
  if (window.innerWidth<710 || 
    ( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent))){
    var div = document.getElementById('mymenu');
    var div2 = document.getElementById('mymenumobileda');
    div.style.display ='none';
    div2.style.display ='block';
  }
  else{
    var div = document.getElementById('mymenu');
    var div2 = document.getElementById('mymenumobileda');
    div.style.display ='block';
    div2.style.display ='none';
  }

  document.getElementById("mymenumobileda").onclick = function fun(){
    var hamburguer = document.getElementById("mymenumobile");
    if (hamburguer.style.display=='block')
      hamburguer.style.display = 'none';
    else
      hamburguer.style.display = 'block';
  }

  document.getElementById("corpo").onclick = function fun2(){
    var hamburguer = document.getElementById("mymenumobile");
    hamburguer.style.display = 'none';
  }
  
  document.getElementById("cabecalho").onclick = function fun3(){
    var hamburguer = document.getElementById("mymenumobile");
    hamburguer.style.display = 'none';
  }
}


window.onresize = function() {
      if (window.innerWidth<710 || 
      (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent))){
        var div = document.getElementById('mymenu');
        var div2 = document.getElementById('mymenumobileda');
        div.style.display ='none';
        div2.style.display ='block';
      }
      else{
        var div = document.getElementById('mymenu');
        var div2 = document.getElementById('mymenumobileda');
        div.style.display ='block';
        div2.style.display ='none';
      }
}
