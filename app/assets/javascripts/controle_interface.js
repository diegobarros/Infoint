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



var test_data =
	            [0, { label: "Cat 1", href:"http://www.yahoo.com" },
	             1, { label: "Cat 1.1", href:"http://www.yahoo.com" },
	             1, { label: "Cat 1.2", href:"http://www.yahoo.com" },
	             2, { label: "Cat 1.2.1", href:"http://www.yahoo.com" },
	             2, { label: "Cat 1.2.2", href:"http://www.yahoo.com" },
	             1, { label: "Cat 1.3", href:"http://www.yahoo.com" },
	             0, { label: "Cat 2", href:"http://www.yahoo.com" }];




$(document).ready(function() {
	
	$("#pesquisar-maps").fancybox();
	inicializaMapa();
	tree_Init()
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

		$('#menu-contexto-1').enableContextMenuItems('#quit');
	
			// Show menu when #myDiv is clicked
				$("#area-menu-contexto").contextMenu({
					menu: 'menu-contexto-1'
				},
					function(action, el, pos) {


					if (action == "quit") {
						$("#botao-avancar-menu-contexto").css("visibility", "visible");
					};
					
					
				});
			
				// Show menu when a list item is clicked
				$("#menu-contexto-1 UL LI").contextMenu({
					menu: 'menu-contexto-1'
				}, function(action, el, pos) {
					
				});
				
			
				// Disable menus
				$("#disableMenus").click( function() {
					$('#area-menu-contexto, #menu-contexto-1 UL LI').disableContextMenu();
					$(this).attr('disabled', true);
					$("#enableMenus").attr('disabled', false);
				});
				
				// Enable menus
				$("#enableMenus").click( function() {
					$('#area-menu-contexto, #menu-contexto-1 UL LI').enableContextMenu();
					$(this).attr('disabled', true);
					$("#disableMenus").attr('disabled', false);
				});
				
			 	$('#menu-contexto-1').disableContextMenuItems('#quit');
				
				// Disable quit
				$("#disableItems").click( function() {
					$('#menu-contexto-1').disableContextMenuItems('#quit');
					$(this).attr('disabled', true);
					$("#enableItems").attr('disabled', false);
				});
				
				// Enable quit
				$("#enableItems").click( function() {
					$('#menu-contexto-1').enableContextMenuItems('#quit');
					$(this).attr('disabled', true);
					$("#disableItems").attr('disabled', false);
				});
	
	
	$("#pesquisar-maps").click(function(){
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



function addChildrenNodes(currLevel, nodeIndex, parent) {
  var lastNode;
  var level = currLevel;

  while (nodeIndex < test_data.length) {
    var level = test_data[nodeIndex];
    if (level == currLevel) {
       nodeIndex++;
       lastNode = new YAHOO.widget.TextNode(test_data[nodeIndex++], parent, false);
    } else if (level < currLevel) {
       return nodeIndex;
    } else {
       nodeIndex = addChildrenNodes(level, nodeIndex, lastNode);
    }
  }
  return nodeIndex;
}

function tree_Init() {
  var tree = new YAHOO.widget.TreeView("tree");
  addChildrenNodes(0, 0, tree.getRoot());
  tree.draw();
}
