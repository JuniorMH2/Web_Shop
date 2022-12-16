document.querySelector('.img__btn').addEventListener('click', function() {
  document.querySelector('.cont').classList.toggle('s--signup');
});
$("#button1").click(function(e){
    e.preventDefault();
swal({
title:"’Hola mundo!",
text:"Hola, estamos probando Sweet Alert 2",
type:"success"
});
    
});