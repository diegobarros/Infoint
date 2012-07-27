/**
 * @author Diego Augusto de Faria Barros
 */
$(document).ready(function() {
  
});


$('#container-descricao-tecla ul li a').click(function () {

    //scroll it to the right position
    $('.mascara').scrollTo($(this).attr('rel'), 300);
         
    //disable click event
       return false;        
         
});