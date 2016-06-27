#!/bin/sh

reserva_ru() {
	SEGUNDA="txt_dias=$(date +"%d%2f%m%2f%Y" --date="monday next week")&"
	TERCA="txt_dias=$(date +"%d%2f%m%2f%Y" --date="tuesday next week")&"
	QUARTA="txt_dias=$(date +"%d%2f%m%2f%Y" --date="wednesday next week")&"
	QUINTA="txt_dias=$(date +"%d%2f%m%2f%Y" --date="thursday next week")&"
	SEXTA="txt_dias=$(date +"%d%2f%m%2f%Y" --date="friday next week")&"
	CARTAO=$1
	CPF=$2
	DATA="$SEGUNDA$TERCA$QUARTA$QUINTA$SEXTA""txt_cartao=$CARTAO&txt_cpf=$CPF"
	echo "\$DATA: $DATA"
	# --data 'txt_dias=04%2F07%2F2016&txt_dias=05%2F07%2F2016&txt_dias=06%2F07%2F2016&txt_dias=07%2F07%2F2016&txt_dias=08%2F07%2F2016&txt_cartao=999&txt_cpf=999.999.999-99'
	curl "https://sistemas.fc.unesp.br/ru/reserva.confirmacao.action" \
		-H 'Pragma: no-cache' \
		-H 'Origin: https://sistemas.fc.unesp.br' \
		-H 'Accept-Encoding: gzip, deflate, br' \
		-H 'Accept-Language: pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4' \
		-H 'Upgrade-Insecure-Requests: 1' \
		-H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36' \
		-H 'Content-Type: application/x-www-form-urlencoded' \
		-H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' \
		-H 'Cache-Control: no-cache' \
		-H 'Referer: https://sistemas.fc.unesp.br/ru/reserva.confirmacao.action' \
		-H 'Cookie: JSESSIONID=72DBC09D062BF482CFC82BF6A6A15527; __utma=44043360.1139344506.1466429618.1466429618.1466429618.1; __utmc=44043360; __utmz=44043360.1466429618.1.1.utmcsr=duckduckgo.com|utmccn=(referral)|utmcmd=referral|utmcct=/' \
		-H 'Connection: keep-alive' \
		-H 'DNT: 1' \
		--data $DATA \
		--compressed >> "log/ru.$1.$(date +%Y-%m-%d--%H-%M-%S).log.out"
}

pesquisa_ru(){
	DATA="txt_cartao=$1"
	curl 'https://sistemas.fc.unesp.br/ru/reserva.pesquisar.action' \
		-H 'Origin: https://sistemas.fc.unesp.br' \
		-H 'Accept-Encoding: gzip, deflate' \
		-H 'Accept-Language: pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4' \
		-H 'Upgrade-Insecure-Requests: 1' \
		-H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36' \
		-H 'Content-Type: application/x-www-form-urlencoded' \
		-H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' \
		-H 'Cache-Control: max-age=0' \
		-H 'Referer: https://sistemas.fc.unesp.br/ru/reserva.pesquisar.action' \
		-H 'Connection: keep-alive' \
		-H 'DNT: 1' \
		--data $DATA \
		--compressed
}

usage(){
	# USAGE GUIDE
	reserva_ru "9999" "999.999.999-99" &
	pesquisa_ru "9999" &
}
