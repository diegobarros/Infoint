/**
 * @author Diego Augusto de Faria Barros
 */
$(document).ready(function(){

	$("#rodape-perguntas ul li:first-child a").click(function(event){

		var idBotaoResponderPergunta =  $(this).attr('id');
		var idBotaoAvancarPergunta = idBotaoResponderPergunta.substring(idBotaoResponderPergunta.lastIndexOf('-') + 1);
		
		var respostasCorretas = obtemRespostaCorreta(idBotaoAvancarPergunta);
		var respostaUsuario = obtemRespostaUsuario(idBotaoAvancarPergunta);
		
		if (respostaUsuario == undefined || respostaUsuario == "") {
			$.fancybox(
				'<h2>Olá!</h2><p>Você ainda não forneceu sua resposta</p>',
				{
        			'autoDimensions'	: false,
					'width'         	:  250,
					'height'        	: 'auto',
					'transitionIn'		: 'none',
					'transitionOut'		: 'none'
				}
			);
			
		} else {
			var acertou = corrigePergunta(respostasCorretas, respostaUsuario);
			
			alert(acertou);
			
			$("#botao-avancar-pergunta-" + idBotaoAvancarPergunta ).css('visibility','visible');
			$("#container-respostas-" + idBotaoAvancarPergunta ).css('visibility','visible');
		}

	});

});


function obtemRespostaCorreta(idPergunta){
	
	var respostasCorretas = new Array()
	var idResposta = "resposta-correta-" + idPergunta.toString();

	respostas = $("#" + idResposta.toString()).children();

	for (var i=0; i < respostas.length; i++) {

	    respostasCorretas[i] = $(respostas[i]).text().toString();
	};
	
	return respostasCorretas;
}

function obtemRespostaUsuario(idPergunta){
	
	var idResposta = "#resposta-pergunta-" + idPergunta.toString()
	var tipoDoCampo = $(idResposta).attr('type')
	var resposta = "";
	
	if (tipoDoCampo == "radio") {
		resposta = $(idResposta + ":checked").val();
		
	} else if (tipoDoCampo == "text"){
		resposta = $(idResposta).val();
	};

	return resposta;

}

function corrigePergunta(respostasCorretas, resposta){

	for (var i=0; i < respostasCorretas.length; i++) {
		
		if (respostasCorretas[i] == resposta) {
			return true;
		};
	};

	return false;
}



























;;