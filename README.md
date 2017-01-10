Nix
===

Projeto
-------
Validação de sequências de palavras.


Problema
--------
Hoje, se alguém digitar as informações "elefante é uma ave", "carro tem asa", "número atômico do carbono é 20", o editor de texto não diz que elas estão erradas.


Objetivo
--------
Validar sequência de palavras usando [base de conhecimento].


Exemplo de base de conhecimento:

    <http://dbpedia.org/resource/Aedes_aegypti> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://dbpedia.org/ontology/Insect> .
    <http://dbpedia.org/resource/Aedes_aegypti> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://dbpedia.org/ontology/Animal> .
    <http://dbpedia.org/ontology/Insect> <http://www.w3.org/2000/01/rdf-schema#label> "inseto"@pt .


Exemplos de texto validado:

`Aedes aegypti é um animal` que possui cabeça, tórax e abdômen, como qualquer inseto.

O `inseto aedes aegypty` é o vetor transmissor do vírus da dengue.



Autor: [Tarciso].

[Tarciso]: https://tarcisomesquita.blogspot.com.br
[base de conhecimento]: https://raw.githubusercontent.com/tarcisomesquita/nix/master/base/1_base_exemplo.txt

