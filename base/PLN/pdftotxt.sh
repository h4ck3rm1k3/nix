#!/bin/bash

if [ -z $1 ] || [ -z $2 ] ; then 
   echo Uso: $0 file.pdf file.txt ;
   exit 1 ;
fi

rm -rf $2

pdftotext -raw $1 $2

sed -i '
:Inicio
N;
${bFim;}
bInicio;
:Fim
s/“/"/g;
s/”/"/g;
s/\xe2\x80\x98/\x27/g;
s/\xe2\x80\x99/\x27/g;
s/\xc2\xb4\xc4\xb1/í/g;
s/\x63\xc2\xb8/ç/g;
s/\xc2\xb4\x61/á/g;
s/\xc2\xb4\x65/é/g;
s/\xc2\xb4\x6f/ó/g;
s/\xc2\xb4\x75/ú/g;
s/\xcb\x86\x65/ê/g;
s/\xcb\x9c\x61/ã/g;
s/\xcb\x9c\x6f/õ/g;
s/\x61\xc2\xb4\x20/á/g;
s/\x45\xc2\xb4/É/g;
s/\x65\xc2\xb4/é/g;
s/\x75\xc2\xb4\x20/ú/g;
s/\x61\xcb\x9c\x20/ã/g;
s/\x6f\xcb\x9c\x20/õ/g;
s/\x75\xc2\xb4\x20/ú/g;
s/\x0A\x0C/\x0A/g;
s/\x0A[0-9]\{1,4\}\x0A//g;
s/\x0A\x0A\x0A/\x0A\x0A/g;
s/\(,\)\n\([a-z]\{1\}\)/\1 \2/g;
s/\([a-z]\{1\}\)\n\([a-z]\{1\}\)/\1 \2/g;
s/\xc2\xad\x0a//g;
s/\([a-z]\)-\n\([a-z]\)/\1\2/g;
' $2

exit 0

