/**
 * @author Diego Augusto de Faria Barros
 */

var geocodificador;
var mapa;
var mapaPesquisa;
var localizacaoInicialDoMapa;
var navegadorSuportaGeolocalizacao = new Boolean();
var servicoDeRotas;
var mostraRotas;

$(document).ready(function() {
	
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
	
	
	$("#janela-pesquisar-maps").click(function(){
		$('#mensagem-botao-maps').remove();
		$('#janela-pesquisar-maps').css('margin-left','0px');

	});
	
	// Pesquisa nos mapas
	$("#botao-pesquisar-endereco-maps").click(function(){
		codificaEndereco();
		$('#botao-avancar-fim').css("visibility", "visible");
		$.fancybox.close();
	});
	
	$("#botao-pesquisar-rota-maps").click(function(){
		calculaRota();
		$('#botao-avancar-fim').css("visibility", "visible");
		$.fancybox.close();
	});
	
	
	// Habilita botão para sair
	

});

function inicializaMapa(){
	
	var configuracoesDoMapa = {
		center: new google.maps.LatLng(-11.350796722383672, -50.625),
		zoom: 6,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	
	mapa = new google.maps.Map(document.getElementById("mapa-canvas"), configuracoesDoMapa);
	mapaPesquisa = new google.maps.Map(document.getElementById("mapa-canvas-pesquisa"), configuracoesDoMapa);
	geocodificador = new google.maps.Geocoder();
	servicoDeRotas = new google.maps.DirectionsService();
	mostraRotas = new google.maps.DirectionsRenderer();
	mostraRotas.setMap(mapaPesquisa);
	configuraLocalizacaoInicial()
}

function configuraLocalizacaoInicial(){
	
	if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(posicao){
			localizacaoInicialDoMapa = new google.maps.LatLng(posicao.coords.latitude, posicao.coords.longitude);
			mapa.setCenter(localizacaoInicialDoMapa);	
			mapaPesquisa.setCenter(localizacaoInicialDoMapa);		
		});
		
	} else{
		localizacaoInicialDoMapa = new google.maps.LatLng(-11.350796722383672, -50.625);
		mapa.setCenter(localizacaoInicialDoMapa);	
		mapaPesquisa.setCenter(localizacaoInicialDoMapa);	
	};
}

function codificaEndereco(){
	
	var endereco = document.getElementById('endereco-campo-pesquisar-mapas').value;

	geocodificador.geocode({'address': endereco }, function(resultados, status) {
		
		if (status == google.maps.GeocoderStatus.OK) {
			
			mapaPesquisa.setCenter(resultados[0].geometry.location);
			
			
			var marcador = new google.maps.Marker({
				map: mapaPesquisa,
				position: resultados[0].geometry.location
			});
			
			mapaPesquisa.setZoom(75);
			
			
		} else {
			alert("O geocodificador não teve sucesso devido as seguintes razões: " + status);
		}
		
	});
}

function calculaRota(){
	var inicio = document.getElementById('endereco-origem-campo-pesquisar-mapas').value;
	var fim = document.getElementById('endereco-destino-campo-pesquisar-mapas').value;
	
	var requisicao = {
		origin: inicio,
		destination: fim,
		travelMode:google.maps.TravelMode.DRIVING
	};
	
	servicoDeRotas.route(requisicao, function(resultado, status){
		if (status == google.maps.DirectionsStatus.OK) {
			mostraRotas.setDirections(resultado);
		};
		
	});

}










