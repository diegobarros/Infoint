/**
 * @author Diego Augusto de Faria Barros
 */

$(document).ready(function() {
	
	inicializaMapa();
	$("#janela-pesquisar-maps").fancybox();
	
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
	
	
	// Habilita o botão para o dropdown
	$("#drop-down-avancar option").click(function(){
		var valorSelecionado = $("#drop-down-avancar option:selected").text();
			
		if (valorSelecionado == "Avançar") {
			$("#botao-avancar-drop-down").css("visibility", "visible");
		} else {
			$("#botao-avancar-drop-down").css("visibility", "hidden");
		}
	});
	
	

});

function inicializaMapa(){
	
	var configuracoesDoMapa = {
		center: new google.maps.LatLng(-34.397, 150.644),
		zoom: 8,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	
	var mapa = new google.maps.Map(document.getElementById("mapa-canvas"), configuracoesDoMapa)
	var mapaPesquisa = new google.maps.Map(document.getElementById("mapa-canvas-pesquisa"), configuracoesDoMapa)
}
