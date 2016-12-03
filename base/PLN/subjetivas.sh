#!/bin/bash
# os arquivos que não estão em utf8 precisam ser abertos com o gedit > salvar como > utf8
#find /media/CEL/diario/ -type f -name '*.txt' -exec ./subjetivas.sh '{}' \; -print >> subjetivas.txt

RETORNO="nada"

for P in absurda absurdamente absurdo acho acostumado acreditamos acredito adequado ágil algum alguma algumas alta amigável bastante bem boa boba bobo bom bonito certo coisa comprido curto devagar difícil dificilmente eficiente elevada errado excelente fácil fantástico feio forte fortemente fraco fraquinha fraquinho horrível importa importante intenso grande lento leve levemente longo maioria mais mal mau maximizar melhor melhores menos mentira minimizar moderado muito nada nunca ótima ótimo parece parecido pequeno péssimo pior piores pouco provavelmente quase rápido razoável ruim semelhante sempre severo similar simples suficiente toda todo tudo útil utilidade várias vários verdade ; do 
   LINHA=$(grep -i $P $1);
   if [ $? = 0 ] ; then 
      if [ $RETORNO = "nada" ] ; then
         echo "" ;
      fi
      echo "" ;
      echo $LINHA
      echo "Palavra subjetiva: $P" ;
      RETORNO="sim" ;
   fi ;
done

if [ $RETORNO = "nada" ] ; then
   exit 1
fi

echo "" ;
exit 0

