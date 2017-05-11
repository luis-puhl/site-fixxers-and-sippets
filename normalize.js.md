Sobre o role de normalização de `UTF-8` que te falei, tive que aprender tudo de novo mas aqui vai o esquema:

> O Unicode Consortium montou um esquema de converter cada caractere pra várias representações em bytes, 
uma delas é particularmente interessante pq ela separa os acentos e as letras, a partir dai é só retirar os 
acentos (filtrar o que não pode, essencialmente)

Exemplo em *JS*: transformar essa parada `"ẛ̣üÜí$4+§ªº"` em algo legível.
```js
'\u1E9B\u0323üÜí$4+§ªº'.normalize('NFKD').split('').map(v=>/[\w]/gi.test(v)?v:'').join('');
// "suUi4ao"
```
O que tem ai é o `normalize` do JS com o padrão `NFDK` -> https://en.wikipedia.org/wiki/Unicode_equivalence#Normalization

A partir daí é aplicar um filtro com `split('')`  e uma *regex* (pode ser qq uma, neste caso usei `[\w]`) e 
juntar tudo de novo com join.

Se quiser depurar essa parada, só tirar o map ou o join pra ver um array do que tá acontecendo.

[![exemplo debug passo-a-passo](http://i.imgur.com/EQAhuIH.png)](http://imgur.com/a/ilUYU)
