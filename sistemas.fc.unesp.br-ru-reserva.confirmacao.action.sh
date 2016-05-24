#!/bin/sh
curl "https://sistemas.fc.unesp.br/ru/reserva.confirmacao.action" \
	-H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" \
	-H "Referer: https://sistemas.fc.unesp.br/ru/reserva.solicitacao.action" \
	-H "Origin: https://sistemas.fc.unesp.br" \
	-H "Upgrade-Insecure-Requests: 1" \
	-H "User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36" \
	-H "Content-Type: application/x-www-form-urlencoded" \
	--data "txt_dias=30"%"2F05"%"2F2016&txt_dias=31"%"2F05"%"2F2016&txt_dias=01"%"2F06"%"2F2016&txt_dias=02"%"2F06"%"2F2016&txt_dias=03"%"2F06"%"2F2016&txt_cartao=9999&txt_cpf=999.999.999-99" \
	--compressed
