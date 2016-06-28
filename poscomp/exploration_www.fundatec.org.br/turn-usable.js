
var stringCURL = "curl 'https://www.fundatec.org.br/portal/concursos/inscricao/padrao/consulta_etapas_ajax.php' -H 'origin: https://www.fundatec.org.br' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4' -H 'cookie: _gat=1; __atuvc=2%7C25; __atuvs=576bd13800454b3b000; _ga=GA1.3.527049575.1466523206; __utmt=1; __utma=173084852.527049575.1466523206.1466523247.1466683725.2; __utmb=173084852.1.10.1466683725; __utmc=173084852; __utmz=173084852.1466523247.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)' -H 'pragma: no-cache' -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded' -H 'accept: */*' -H 'cache-control: no-cache' -H 'authority: www.fundatec.org.br' -H 'referer: https://www.fundatec.org.br/portal/concursos/inscricao/padrao/v20_inscricao_formulario.php' -H 'dnt: 1' --data 'function=1&programa=1&concurso=394' --compressed";

function turnCURLintoJS(stringCURL) {
	const regex = new RegExp(" (-H) '([^']+)'| (--data) '([^']+)'| (--compressed)| '([^']+)'|curl");
	const filterEmpty = function (stringArg) {
		return stringArg!= undefined && stringArg.length > 0;
	}

	var split = stringCURL.split(regex);
	var result = split.filter(filterEmpty);

	return result;
}


console.log(turnCURLintoJS(stringCURL));
