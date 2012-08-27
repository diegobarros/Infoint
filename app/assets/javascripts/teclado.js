/**
 * @author Diego Augusto de Faria Barros
 */
$(document).ready(function() {
	

	
   Recaptcha.create("6Le0xdUSAAAAAFyq5UPtKiO13txN467f3MZhTcab", 'recaptcha',
    {
      theme: "red",
      callback: Recaptcha.focus_response_field
    }
  );
  
});
