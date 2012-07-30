/**
 * @author Diego Augusto de Faria Barros
 */

$(document).ready(function() {
	
	$("#checkbox-avancar").click(function(){
		var marcado = this.checked;
		if (marcado) {
			$("#botao-avancar-checkbox").css("visibility", "visible");
		} else{
			$("#botao-avancar-checkbox").css("visibility", "hidden");
		};
	});
  
  
  	// Habilita botão para o radio button
  	$("#radio-button-avancar-sim").click(function(){
		
		var marcado = this.checked;
		if (marcado) {
			$("#botao-avancar-radio-button").css("visibility", "visible");
		}
	});
  
    $("#radio-button-avancar-nao").click(function(){
		
		var marcado = this.checked;
		if (marcado) {
			$("#botao-avancar-radio-button").css("visibility", "hidden");
		}
	});
  
});

