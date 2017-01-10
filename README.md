Nix
===

Projeto: Validação de sequências de palavras.
--------

Problema: Hoje, se alguém digitar as informações "elefante é uma ave", "carro tem asa", "número atômico do carbono é 20", o editor de texto não diz que elas estão erradas.
---------

Objetivo: Validar sequência de palavras usando base de conhecimento.
---------

Exemplo de base de conhecimento:

&lt;<http://dbpedia.org/resource/Aedes_aegypti>&gt; &lt;<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>&gt; &lt;<http://dbpedia.org/ontology/Insect>&gt; .
&lt;<http://dbpedia.org/resource/Aedes_aegypti>&gt; &lt;<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>&gt; &lt;<http://dbpedia.org/ontology/Animal>&gt; .
&lt;<http://dbpedia.org/ontology/Insect>&gt; &lt;<http://www.w3.org/2000/01/rdf-schema#label>&gt; "inseto"@pt .


Exemplos de texto validado:

`Aedes aegypti é um animal` que possui cabeça, tórax e abdômen, como qualquer inseto.

O `inseto aedes aegypty` é o vetor transmissor do vírus da dengue.

Ideia 1

Extrair triplas RDF de textos usando Processamento de Linguagem Natural e compará-las com uma base que já existia.

Acho esse método complexo demais.
Ideia 2

Usar SPARQL query para obter o resource que contem o label igual à palavra do texto.

Devido à dificuldade com polissemia, não marcar apenas uma palavra.

Dificuldade com HTTP header Accept. Teste usando iframe, form, script. Talvez usando AJAX.

Dificuldade com a organização das bases disponíveis na internet.


Autor: [Tarciso].

[Tarciso]: https://tarcisomesquita.blogspot.com.br

