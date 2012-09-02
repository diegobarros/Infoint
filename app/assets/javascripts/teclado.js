/**
 * @author Diego Augusto de Faria Barros
 */

var acertos = 0;
var erros = 0;
const TOTAL_PERGUNTAS = 10;

$(document).ready(function() {
		
   Recaptcha.create("6Le0xdUSAAAAAFyq5UPtKiO13txN467f3MZhTcab", 'recaptcha',
    {
      theme: "red",
      callback: Recaptcha.focus_response_field
    }
  );
  
  
  
  $("#").click(function(){
  	
  });
  
});
