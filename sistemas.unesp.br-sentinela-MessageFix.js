(function (){
	$("a[href*='javascript:submitVisualizarMensagem(']").each(function(index, element){
		var msgId = element.getAttribute('href').replace("javascript:submitVisualizarMensagem('", "").replace("');", "");
		element.setAttribute('href', "sentinela.viewMessage.action?txt_id=" + msgId + "&emailTipo=recebidas");
	});
})();
