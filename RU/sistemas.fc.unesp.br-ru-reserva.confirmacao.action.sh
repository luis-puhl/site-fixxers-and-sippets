#!/bin/sh

build_date() {
	echo "txt_dias="$1%"2F"$(date +%m)%"2F"$(date +%Y)"&"
}

reserva_ru() {
	# Week day - today (gets sunday)
	SUNDAY=$[$(date +%d)-$(date +%w)+7]
	SEGUNDA=$(build_date $[$SUNDAY+1])
	TERCA=$(build_date $[$SUNDAY+2])
	QUARTA=$(build_date $[$SUNDAY+3])
	QUINTA=$(build_date $[$SUNDAY+4])
	SEXTA=$(build_date $[$SUNDAY+5])
	CARTAO=$1
	CPF=$2
	DATA="$SEGUNDA$TERCA$QUARTA$QUINTA$SEXTA\txt_cartao=$CARTAO&txt_cpf=$CPF"
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
