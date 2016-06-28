const https = require('https');
// const cheerio = require('cheerio');
const spawn = require('child_process').spawn;

/*
function minerarDados(body){
  var $ = cheerio.load(body);
  var scores = $('title')
    .map(function(index, node) {
      return $(node).text().toLowerCase().match(/([a-z]+)/g);
    })
    .reduce(function(last, now){
      return last.concat(now)
    }, [])
    .reduce(function(last, now){
      var index = last[0].indexOf(now);
      if (index === -1) {
        last[0].push(now);
        last[1].push(1);
      } else {
        last[1][index] += 1;
      }
      return last;
    }, [[], []]);
  var zip = [];
  scores[0].forEach(function(word, i) {
    zip.push([word, scores[1][i]])
  });
  var filtered = zip.filter(function (element){
    return element[1] >= 10
  });
  console.log(filtered.slice(0,20));
}

function getCallback(response){
  var body = '';
  console.log("Got response: " + response.statusCode);
  response.on('data', function (chunk) {
    body += chunk;
  });
  response.on('end', function(){
    minerarDados(body);
  });
}
*/

function turnCURLintoJS(stringCURL) {
	const regex = new RegExp(" (-H) '([^']+)'| (--data) '([^']+)'| (--compressed)| '([^']+)'|curl");
	const filterEmpty = function (stringArg) {
		return stringArg!= undefined && stringArg.length > 0;
	}

	var split = stringCURL.split(regex);
	var result = split.filter(filterEmpty);

	return result;
}

/**
 * @see( exploration_www.fundatec.org.br )
**/
function getUniversidades (){
	var stringCURL = "curl 'https://www.fundatec.org.br/portal/concursos/inscricao/padrao/consulta_etapas_ajax.php' -H 'origin: https://www.fundatec.org.br' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4' -H 'cookie: _gat=1; __atuvc=3%7C25; __atuvs=576bea8ad06195f7000; _ga=GA1.3.527049575.1466523206; __utmt=1; __utma=173084852.527049575.1466523206.1466683725.1466690682.3; __utmb=173084852.1.10.1466690682; __utmc=173084852; __utmz=173084852.1466523247.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)' -H 'pragma: no-cache' -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded' -H 'accept: */*' -H 'cache-control: no-cache' -H 'authority: www.fundatec.org.br' -H 'referer: https://www.fundatec.org.br/portal/concursos/inscricao/padrao/v20_inscricao_formulario.php' -H 'dnt: 1' --data 'function=1&programa=1&concurso=394' --compressed";

	let agrv = turnCURLintoJS(stringCURL);

	const curl = spawn('curl', agrv);

	curl.stdout.on('data', (data) => {
	  console.log(`stdout: ${data}`);
	});

	curl.stderr.on('data', (data) => {
	  console.log(`stderr: ${data}`);
	});

	curl.on('close', (code) => {
	  console.log(`child process exited with code ${code}`);
	});
}

/**
 * @see( exploration_www.fundatec.org.br )
**/
function getProgramas( universidadeIndex ) {
	var stringCURL = "curl 'https://www.fundatec.org.br/portal/concursos/inscricao/padrao/consulta_etapas_ajax.php' -H 'origin: https://www.fundatec.org.br' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4' -H 'cookie: __atuvc=3%7C25; __atuvs=576bea8ad06195f7000; _ga=GA1.3.527049575.1466523206; __utma=173084852.527049575.1466523206.1466683725.1466690682.3; __utmb=173084852.1.10.1466690682; __utmc=173084852; __utmz=173084852.1466523247.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)' -H 'pragma: no-cache' -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded' -H 'accept: */*' -H 'cache-control: no-cache' -H 'authority: www.fundatec.org.br' -H 'referer: https://www.fundatec.org.br/portal/concursos/inscricao/padrao/v20_inscricao_formulario.php' -H 'dnt: 1' --data 'function=2&instituicao=65&concurso=394&programa=1' --compressed";

	let agrv = turnCURLintoJS(stringCURL);

	curl.stdout.on('data', (data) => {
	  console.log(`stdout: ${data}`);
	});

	curl.stderr.on('data', (data) => {
	  console.log(`stderr: ${data}`);
	});

	curl.on('close', (code) => {
	  console.log(`child process exited with code ${code}`);
	});
}

/*
https.get('https://news.ycombinator.com/bigrss', getCallback)
  .on('error', function(e){
    console.log("Ocorreu um erro: " + e.message);
  });
*/

var unis = getUniversidades();
