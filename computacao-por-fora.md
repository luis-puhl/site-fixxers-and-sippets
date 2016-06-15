
Aprenda os conhecimentos de um Computólogo sem entrar na Faculdade
===

# Por onde começar

## Seja esperto, use a cabeça

Nossa mente é complexa mesmo assim criamos coias mais complexas que ela, alguns
chamam isso de sociedade, mas aqui estu falando de *Aplicações Computacionais*.

O termo aplicação é sempre relativo a alguma ferramenta. Aplicação de um
martelo, alicate, linguagem, framework, estrutura, tecnologia. Quando falamos de
aplicação computacional falamos de algo que fazemos com computadores. O que
fazemos com eles é culpa da sociedade (*a empresa, o cliente, nos mesmos no
final de semana... a necessidade é social*).

Quando nosso interesse é computação, primeiro devemos entender o que levou a
necessidade e o que ela é exatamente (*requisitos* para os fluentes em
Engenharia). Isso envolve criar um modelo. Esse modelo geralmente é matemático,
da área da lógica.

Então, depois dessa filosofia, a primeira coisa a aprender é lógica básica.
[wiki em ingles][math logic wiki].

[math logic wiki]: https://en.wikipedia.org/wiki/Mathematical_logic

### Conceitos de lógica

O *Universo*: O problema, escopo, local, área onde estamos trabalhando e todos
os seus componentes.

O *Átomo*: Menor particula em um universo.

O *Modelo*: Como entendemos o universo, o modelo *representa* o universo em uma
linguagem que compreendemos. Nunca entendemos todo o universo (*isso seria
oniciencia*) apenas o suficiente para criar o modelo.

O modelo é o que manipulamos, com base no modelo criamos componentes
computacionais que alteram o estado do modelo.

## Learn The Hard Way

Ciência da computação não é somente programar, mas a programação é a ferramenta
pela qual forçamos máquinas estúpidas a fazer algo por nós, é também uma forma
de expressão muito forte e complexa.

Considerando isso e que programação de verdade só se aprende fazendo [Become a
Programmer MotherFucker]!!!

[Become a Programmer MotherFucker]:(http://programming-motherfucker.com/become.html)

### Desafios

Existem competições em programação, acredite, esses nerds adoram competição.
Nesse tipo de brincadeira são criados problemas bem teóricos com uma historinha
boba para explicá-los e cabe aos competidores escrever um programa que os
resolva dentro de um prazo estipulado (menos de 2 segundos geralmente) que só é
possível se a solução tem complexidade adequada.

http://www.spoj.com/



 nesse site até resolver 100 problemas

## Livros, muitos Livros

https://github.com/vhf/free-programming-books

https://github.com/sindresorhus/awesome

## Entenda o que acontece por baixo dos panos

Muitas vezes você já ouviu o termo várias vezes mas não sabe como a coisa
funciona por baixo. Procure entender como cada atomo é feito.

Nos casos de atomos complexos procure novos caminhos para o entendimento, por
exemplo soluções visuais como o [Algorithm Visualizer].

[Algorithm Visualizer]: http://jasonpark.me/AlgorithmVisualizer

# Conheça seu ambiente

## Bash

[referecia oficial][bash documentation] e [curso curto][curso curto de bash].

[bash documentation]: https://www.gnu.org/software/bash/manual/bash.html#Coprocesses
[curso curto de bash]: http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html "Curso curto de bash"

## Editor de texto

Goto atom.io

Get Hard, get [VIM](http://www.vim.org/). And learn it here.

![vim keyboard cheat sheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)
![vim cheat sheet](https://cdn.shopify.com/s/files/1/0165/4168/files/preview.png)

# Sobre código

Em uma grande aplicação comum em uma grande empresa temos código como esse:

<pre>
GrandeComponete.EpresaGrande.MuitosNomesLongosEDescritivosSaoComuns.meuEncapsulamento.meuBuilder(
	ProgrammerParam,
	ParamNumberTwoIsAvalible,
	ParamNumberTwo
	);
</pre>

## Documente seu código

<h1><strong>ESCREVA COMENTÁRIOS</strong> duh</h1>

### UML

[Unified Modeling Language] ([UML na wiki]) é uma linguagem para descrever esturutras de um
software. Ela descreve utilizando vários tipos de diagrama, cada especializado em
uma tarefa específica. Ela não é uma linguagem para computadores e sim para
humanos então não pense que você vai codificar alguma coisa nela. Porém UML é
um padrão ISO então não tente fugir dela.

[Unified Modeling Language]: http://www.uml.org/
[UML na wiki]: https://en.wikipedia.org/wiki/Unified_Modeling_Language

Ela é dividida em:
- **Diagramas de estrutura**
	- [Class Diagram] **Use para mostrar no mínimo as entidades**,
	- Object Diagram,
	- Component Diagram,
	- Composite Structure Diagram,
	- Package Diagram,
	- Deployment Diagram;
- **Diagramas de comportamento**
	- [Use Case Diagram] **Use durante a coleta de requerimentos**,
	- [Activity Diagram] *Tipico fluxograma*,
	- State Machine Diagram *(coisa de automato)*;
- **Diagramas de interação** derivados do diagrama de comportamento
	- [Sequence Diagram] **Use para explicar fluxo de funções complexas**,
	- Communication Diagram,
	- Timing Diagram,
	- Interaction Overview Diagram.

[Class Diagram]: https://en.wikipedia.org/wiki/Class_diagram

[Use Case Diagram]: https://en.wikipedia.org/wiki/Use_Case_Diagram

[Activity Diagram]: https://en.wikipedia.org/wiki/Activity_diagram

[Sequence Diagram]: https://en.wikipedia.org/wiki/Sequence_diagram

#### Diagrama de Classe

Mostra a estrutura estática mostrando suas classes, seus atributos
(qualidades), operações ou métodos e a relação entre essas classes e seus objetos.

Use para mostrar as entidades que são representadas no sistema. Cada entidade
tem uma identidade, qualidades e operações que pode executar ou que podem ser
executadas com ela.

Relação entre classes:

<a
title="By Paulo Merson (I created the file.) [Public domain], via Wikimedia Commons"
href="https://commons.wikimedia.org/wiki/File%3AUml_diagram2.png">
	![Relação entre classes](https://upload.wikimedia.org/wikipedia/commons/d/d6/Uml_diagram2.png)
</a>

Uma classe com atributos e métodos:

<a
title="By Donald Bell [GFDL (http://www.gnu.org/copyleft/fdl.html)], via Wikimedia Commons"
href="https://commons.wikimedia.org/wiki/File%3ABankAccount1.svg">
	![classe em UML](https://upload.wikimedia.org/wikipedia/commons/4/41/BankAccount1.svg)
</a>

##### Visibilidade

Especifica a visibilidade de um membro da classe utilizando prefixos no nome.


|prefixo|significado|
|---|------|
|+	|Public|
|-	|Private|
|#	|Protected|
|/	|Derived (can be combined with one of the others)|
|~	|Package|

##### Relacionamentos

Podem ser de:
- Associação
- Hierarquia
- Realização/Implementação
- Dependência
- Agregação
- Composição

<a
title="By Yanpas (Own work) [CC BY-SA 4.0 (http://creativecommons.org/licenses/by-sa/4.0)], via Wikimedia Commons"
href="https://commons.wikimedia.org/wiki/File%3AUml_classes_en.svg">
	![tipos de setas](https://upload.wikimedia.org/wikipedia/commons/9/93/Uml_classes_en.svg)
</a>

Com multiplicidade
- 0..1 (nenhuma ou uma instancia)
- 1 (exatamente uma)
- 0..* (zero ou mais)
- 1..* (uma ou mais)

Também pode ser usada a notação "pé de galinha". Onde:
- + (exatamente 1)
- +0 (zero ou um)
- >0 (zero ou mais)
- >+ (um ou mais)

![notação pé de galinha](http://www.ntu.edu.sg/home/ehchua/programming/sql/images/ManyToOne.png)

#### Diagrama de Caso de Uso

Explica a interação de cada usuário (não se limite aos humanos) com cada
componente. Cada interação é um caso de uso e corresponde uma funcionalidade
no sistema final.

Não é necessário chegar tão longe quanto este exemplo.

<a
title="Kishorekumar 62 [GFDL (http://www.gnu.org/copyleft/fdl.html) or CC BY-SA 3.0 (http://creativecommons.org/licenses/by-sa/3.0)], via Wikimedia Commons"
href="https://commons.wikimedia.org/wiki/File%3AUse_case_restaurant_model.svg">
	![Exemplo de Casos de Uso: Restaurante](https://upload.wikimedia.org/wikipedia/commons/1/1d/Use_case_restaurant_model.svg)
</a>

#### Diagrama de Atividade - *O típico fluxograma*

Mostra os passos e decisões tomadas na execução de um caso de uso. É o
famoso fluxograma.

<a
title="​spanish Wikipedia user Gwaur [GFDL (http://www.gnu.org/copyleft/fdl.html) or CC-BY-SA-3.0 (http://creativecommons.org/licenses/by-sa/3.0/)], via Wikimedia Commons"
href="https://commons.wikimedia.org/wiki/File%3AActivity_conducting.svg">
	![Exemplo de atividade: conduzindo brainstorm](https://upload.wikimedia.org/wikipedia/commons/e/e7/Activity_conducting.svg)
</a>

#### Diagrama de Sequencia

Use para explicar fluxo de funções complexas, ou seja, quando a operação envolve
muitas entidades ativas no processo. Ela representa as Threads (linhas de execução)
tempo de vida e chamadas de função.

Difere do diagrama de atividade pois mostra a reação dos componentes ao invés de
sua interelação.

<a
title="By Coupling_loss_graph.svg (File:CheckEmail.png) [CC BY-SA 3.0 (http://creativecommons.org/licenses/by-sa/3.0)], via Wikimedia Commons"
href="https://commons.wikimedia.org/wiki/File%3ACheckEmail.svg">
	![Exemplo de fluxo: checar e-mail](https://upload.wikimedia.org/wikipedia/commons/9/9b/CheckEmail.svg)
</a>



### MarkDown

MarkDown é facil de escrever (MIME:text/markdown ao invés de application/msword
ou algo do gereno) no seu editor de texto. Ele é
convertido em HTML que é lindo e Web e para para formatos que gerentes conhecem
(vulgo PDF).

Markdown é o meio de escrever documentação oficial do github, e o melhor lugar
para aprender é lá também. Use [adam-p cheat sheet] feito por @adam-p.

[adam-p cheat sheet]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet "adam-p MarkDown Cheat Sheet"

No atom, quando escrever em MarkDown utilize o [pacote markdown preview].

[pacote markdown preview]: https://atom.io/packages/markdown-preview

Existem ferramentas para te ajudar mesmo quando as coisas ficam cabeludas demais
como [structurizr] que promente uma visão da arquitetura de software e documentação.

[structurizr]: https://structurizr.com/

## Teste seu código

> *Faça o que quiser, mas que seja testável.*

### Teste sua API

Existem vários jeitos de testar sua API, hoje o mais legal é usar o [postman].

[postman]: https://www.getpostman.com/

# HTML

Aprenda em um lugar e um lugar somente: <h1><strong>https://www.w3.org/TR/html/</strong></h1>
