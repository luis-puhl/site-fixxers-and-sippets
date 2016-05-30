#!/bin/sh

function resrva_ru {
	SEGUNDA="06"%"2F06"%"2F2016"
	TERCA="07"%"2F06"%"2F2016"
	QUARTA="08"%"2F06"%"2F2016"
	QUINTA="09"%"2F06"%"2F2016"
	SEXTA="10"%"2F06"%"2F2016"
	CARTAO=$1
	CPF=$2
	DATA="txt_dias=$SEGUNDA&txt_dias=$TERCA&txt_dias=$QUARTA&txt_dias=$QUINTA&txt_dias=$SEXTA&txt_cartao=$CARTAO&txt_cpf=$CPF"
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

# RESERVA
resrva_ru "9999" "999.999.999-99" &
