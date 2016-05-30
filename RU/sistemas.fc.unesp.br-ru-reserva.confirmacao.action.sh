#!/bin/sh
reserva_ru() {
	SEGUNDA="txt_dias=06"%"2F06"%"2F2016&"
	TERCA="txt_dias=07"%"2F06"%"2F2016&"
	QUARTA="txt_dias=08"%"2F06"%"2F2016&"
	QUINTA="txt_dias=09"%"2F06"%"2F2016&"
	SEXTA="txt_dias=10"%"2F06"%"2F2016"
	CARTAO=$1
	CPF=$2
	DATA="$SEGUNDA$TERCA$QUARTA$QUINTA$SEXTA&txt_cartao=$CARTAO&txt_cpf=$CPF"
	curl "https://sistemas.fc.unesp.br/ru/reserva.confirmacao.action" \
		-H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" \
		-H "Referer: https://sistemas.fc.unesp.br/ru/reserva.solicitacao.action" \
		-H "Origin: https://sistemas.fc.unesp.br" \
		-H "Upgrade-Insecure-Requests: 1" \
		-H "User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36" \
		-H "Content-Type: application/x-www-form-urlencoded" \
		--data $DATA \
		--compressed
}

pesquisa_ru(){
	DATA="txt_cartao=$1"
	curl 'https://sistemas.fc.unesp.br/ru/reserva.pesquisar.action' \
		-H 'Cookie: JSESSIONID=D96695C3E9CD038D930293186900B37D' \
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

# USAGE GUIDE
reserva_ru "9999" "999.999.999-99" &
pesquisa_ru "9999" &
