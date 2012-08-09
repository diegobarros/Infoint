/**
 * @author Diego Augusto de Faria Barros
 */
$(document).ready(function(){

	$("#rodape-perguntas ul li:first-child a").click(function(event){

		var idBotaoResponderPergunta =  $(this).attr('id');
		var idBotaoAvancarPergunta = idBotaoResponderPergunta.substring(idBotaoResponderPergunta.lastIndexOf('-') + 1);
		
		var isChecked = $("input[name=alternativa]:checked").length > 0
		
	
		$("#botao-avancar-pergunta-" + idBotaoAvancarPergunta ).css('visibility','visible');
		
		$("#container-respostas-" + idBotaoAvancarPergunta ).css('visibility','visible');
		
	});
	

	
});
