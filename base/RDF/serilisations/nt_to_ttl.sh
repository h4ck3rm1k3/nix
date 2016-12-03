#!/bin/bash

if [ -z "$1" ] ; then
   echo "Uso: $0 filename.nt filename.ttl"
   exit 1
fi

OUTPUT=${1%.nt}.ttl

if [ -f "$OUTPUT" ] ; then
   echo "Já existe um arquivo chamado \"$OUTPUT\""
   exit 1
fi

# cat nameSpace.txt | cut -d' ' -f2-3 | sed 's/\//\\\//g; s/\([^ ]*\) <\([^>]*\)>/   s\/<\2\\([^>]*\\)>\/\1\\1\/g\;/g;'

echo '
@prefix a: <http://www.w3.org/2005/Atom> .
@prefix address: <http://schemas.talis.com/2005/address/schema#> .
@prefix admin: <http://webns.net/mvcb/> .
@prefix atom: <http://atomowl.org/ontologies/atomrdf#> .
@prefix aws: <http://soap.amazon.com/> .
@prefix b3s: <http://b3s.openlinksw.com/> .
@prefix batch: <http://schemas.google.com/gdata/batch> .
@prefix bibo: <http://purl.org/ontology/bibo/> .
@prefix bugzilla: <http://www.openlinksw.com/schemas/bugzilla#> .
@prefix c: <http://www.w3.org/2002/12/cal/icaltzd#> .
@prefix campsite: <http://www.openlinksw.com/campsites/schema#> .
@prefix cb: <http://www.crunchbase.com/> .
@prefix cc: <http://web.resource.org/cc/> .
@prefix content: <http://purl.org/rss/1.0/modules/content/> .
@prefix cv: <http://purl.org/captsolo/resume-rdf/0.2/cv#> .
@prefix cvbase: <http://purl.org/captsolo/resume-rdf/0.2/base#> .
@prefix dawgt: <http://www.w3.org/2001/sw/DataAccess/tests/test-dawg#> .
@prefix dbc: <http://dbpedia.org/resource/Category:> .
@prefix dbo: <http://dbpedia.org/ontology/> .
@prefix dbp: <http://dbpedia.org/property/> .
@prefix dbr: <http://dbpedia.org/resource/> .
@prefix dc: <http://purl.org/dc/elements/1.1/> .
@prefix dct: <http://purl.org/dc/terms/> .
@prefix digg: <http://digg.com/docs/diggrss/> .
@prefix dul: <http://www.ontologydesignpatterns.org/ont/dul/DUL.owl> .
@prefix enc: <http://purl.oclc.org/net/rss_2.0/enc#> .
@prefix exif: <http://www.w3.org/2003/12/exif/ns/> .
@prefix fb: <http://api.facebook.com/1.0/> .
@prefix ff: <http://api.friendfeed.com/2008/03> .
@prefix fn: <http://www.w3.org/2005/xpath-functions/#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix freebase: <http://rdf.freebase.com/ns/> .
@prefix g: <http://base.google.com/ns/1.0> .
@prefix gb: <http://www.openlinksw.com/schemas/google-base#> .
@prefix gd: <http://schemas.google.com/g/2005> .
@prefix geo: <http://www.w3.org/2003/01/geo/wgs84_pos#> .
@prefix geonames: <http://www.geonames.org/ontology#> .
@prefix georss: <http://www.georss.org/georss/> .
@prefix gml: <http://www.opengis.net/gml> .
@prefix go: <http://purl.org/obo/owl/GO#> .
@prefix hlisting: <http://www.openlinksw.com/schemas/hlisting/> .
@prefix hoovers: <http://wwww.hoovers.com/> .
@prefix hrev: <http://www.purl.org/stuff/hrev#> .
@prefix ical: <http://www.w3.org/2002/12/cal/ical#> .
@prefix ir: <http://web-semantics.org/ns/image-regions> .
@prefix itunes: <http://www.itunes.com/DTDs/Podcast-1.0.dtd> .
@prefix ldp: <http://www.w3.org/ns/ldp#> .
@prefix lgv: <http://linkedgeodata.org/vocabulary#> .
@prefix link: <http://www.xbrl.org/2003/linkbase> .
@prefix lod: <http://lod.openlinksw.com/> .
@prefix math: <http://www.w3.org/2000/10/swap/math#> .
@prefix media: <http://search.yahoo.com/mrss/> .
@prefix mesh: <http://purl.org/commons/record/mesh/> .
@prefix mf: <http://www.w3.org/2001/sw/DataAccess/tests/test-manifest#> .
@prefix mmd: <http://musicbrainz.org/ns/mmd-1.0#> .
@prefix mo: <http://purl.org/ontology/mo/> .
@prefix mql: <http://www.freebase.com/> .
@prefix nci: <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#> .
@prefix nfo: <http://www.semanticdesktop.org/ontologies/nfo/#> .
@prefix ng: <http://www.openlinksw.com/schemas/ning#> .
@prefix nyt: <http://www.nytimes.com/> .
@prefix oai: <http://www.openarchives.org/OAI/2.0/> .
@prefix oai_dc: <http://www.openarchives.org/OAI/2.0/oai_dc/> .
@prefix obo: <http://www.geneontology.org/formats/oboInOwl#> .
@prefix ogc: <http://www.opengis.net/> .
@prefix ogcgml: <http://www.opengis.net/ont/gml#> .
@prefix ogcgs: <http://www.opengis.net/ont/geosparql#> .
@prefix ogcgsf: <http://www.opengis.net/def/function/geosparql/> .
@prefix ogcgsr: <http://www.opengis.net/def/rule/geosparql/> .
@prefix ogcsf: <http://www.opengis.net/ont/sf#> .
@prefix openSearch: <http://a9.com/-/spec/opensearchrss/1.0/> .
@prefix opencyc: <http://sw.opencyc.org/2008/06/10/concept/> .
@prefix opl: <http://www.openlinksw.com/schema/attribution#> .
@prefix opl-gs: <http://www.openlinksw.com/schemas/getsatisfaction/> .
@prefix opl-meetup: <http://www.openlinksw.com/schemas/meetup/> .
@prefix opl-xbrl: <http://www.openlinksw.com/schemas/xbrl/> .
@prefix oplweb: <http://www.openlinksw.com/schemas/oplweb#> .
@prefix ore: <http://www.openarchives.org/ore/terms/> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix product: <http://www.buy.com/rss/module/productV2/> .
@prefix protseq: <http://purl.org/science/protein/bysequence/> .
@prefix r: <http://backend.userland.com/rss2> .
@prefix radio: <http://www.radiopop.co.uk/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfa: <http://www.w3.org/ns/rdfa#> .
@prefix rdfdf: <http://www.openlinksw.com/virtrdf-data-formats#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix rev: <http://purl.org/stuff/rev#> .
@prefix review: <http://www.purl.org/stuff/rev#> .
@prefix rss: <http://purl.org/rss/1.0/> .
@prefix sc: <http://purl.org/science/owl/sciencecommons/> .
@prefix scovo: <http://purl.org/NET/scovo#> .
@prefix sd: <http://www.w3.org/ns/sparql-service-description#> .
@prefix sioc: <http://rdfs.org/sioc/ns#> .
@prefix sioct: <http://rdfs.org/sioc/types#> .
@prefix skiresort: <http://www.openlinksw.com/ski_resorts/schema#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix slash: <http://purl.org/rss/1.0/modules/slash/> .
@prefix stock: <http://xbrlontology.com/ontology/finance/stock_market#> .
@prefix twfy: <http://www.openlinksw.com/schemas/twfy#> .
@prefix umbel: <http://umbel.org/umbel#> .
@prefix umbel-ac: <http://umbel.org/umbel/ac/> .
@prefix umbel-rc: <http://umbel.org/umbel/rc/> .
@prefix umbel-sc: <http://umbel.org/umbel/sc/> .
@prefix uniprot: <http://purl.uniprot.org/> .
@prefix units: <http://dbpedia.org/units/> .
@prefix usc: <http://www.rdfabout.com/rdf/schema/uscensus/details/100pct/> .
@prefix v: <http://www.openlinksw.com/xsltext/> .
@prefix vcard: <http://www.w3.org/2001/vcard-rdf/3.0#> .
@prefix vcard2006: <http://www.w3.org/2006/vcard/ns#> .
@prefix vi: <http://www.openlinksw.com/virtuoso/xslt/> .
@prefix virt: <http://www.openlinksw.com/virtuoso/xslt> .
@prefix virtcxml: <http://www.openlinksw.com/schemas/virtcxml#> .
@prefix virtpivot: <http://www.openlinksw.com/schemas/virtpivot#> .
@prefix virtrdf: <http://www.openlinksw.com/schemas/virtrdf#> .
@prefix void: <http://rdfs.org/ns/void#> .
@prefix wb: <http://www.worldbank.org/> .
@prefix wdrs: <http://www.w3.org/2007/05/powder-s#> .
@prefix wf: <http://www.w3.org/2005/01/wf/flow#> .
@prefix wfw: <http://wellformedweb.org/CommentAPI/> .
@prefix wikicompany: <http://dbpedia.openlinksw.com/wikicompany/> .
@prefix wikidata: <http://www.wikidata.org/entity/> .
@prefix xf: <http://www.w3.org/2004/07/xpath-functions> .
@prefix xfn: <http://gmpg.org/xfn/11#> .
@prefix xhtml: <http://www.w3.org/1999/xhtml> .
@prefix xhv: <http://www.w3.org/1999/xhtml/vocab#> .
@prefix xi: <http://www.xbrl.org/2003/instance> .
@prefix xml: <http://www.w3.org/XML/1998/namespace> .
@prefix xn: <http://www.ning.com/atom/1.0> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix xsl10: <http://www.w3.org/XSL/Transform/1.0> .
@prefix xsl1999: <http://www.w3.org/1999/XSL/Transform> .
@prefix xslwd: <http://www.w3.org/TR/WD-xsl> .
@prefix yago: <http://dbpedia.org/class/yago/> .
@prefix yago-res: <http://mpii.de/yago/resource/> .
@prefix yt: <http://gdata.youtube.com/schemas/2007> .
@prefix zem: <http://s.zemanta.com/ns#> .
' > "$OUTPUT"

sed -e '
   s/<http:\/\/www.w3.org\/2005\/Atom\([^>]*\)>/a:\1/g;
   s/<http:\/\/schemas.talis.com\/2005\/address\/schema#\([^>]*\)>/address:\1/g;
   s/<http:\/\/webns.net\/mvcb\/\([^>]*\)>/admin:\1/g;
   s/<http:\/\/atomowl.org\/ontologies\/atomrdf#\([^>]*\)>/atom:\1/g;
   s/<http:\/\/soap.amazon.com\/\([^>]*\)>/aws:\1/g;
   s/<http:\/\/b3s.openlinksw.com\/\([^>]*\)>/b3s:\1/g;
   s/<http:\/\/schemas.google.com\/gdata\/batch\([^>]*\)>/batch:\1/g;
   s/<http:\/\/purl.org\/ontology\/bibo\/\([^>]*\)>/bibo:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/bugzilla#\([^>]*\)>/bugzilla:\1/g;
   s/<http:\/\/www.w3.org\/2002\/12\/cal\/icaltzd#\([^>]*\)>/c:\1/g;
   s/<http:\/\/www.openlinksw.com\/campsites\/schema#\([^>]*\)>/campsite:\1/g;
   s/<http:\/\/www.crunchbase.com\/\([^>]*\)>/cb:\1/g;
   s/<http:\/\/web.resource.org\/cc\/\([^>]*\)>/cc:\1/g;
   s/<http:\/\/purl.org\/rss\/1.0\/modules\/content\/\([^>]*\)>/content:\1/g;
   s/<http:\/\/purl.org\/captsolo\/resume-rdf\/0.2\/cv#\([^>]*\)>/cv:\1/g;
   s/<http:\/\/purl.org\/captsolo\/resume-rdf\/0.2\/base#\([^>]*\)>/cvbase:\1/g;
   s/<http:\/\/www.w3.org\/2001\/sw\/DataAccess\/tests\/test-dawg#\([^>]*\)>/dawgt:\1/g;
   s/<http:\/\/dbpedia.org\/resource\/Category:\([^>]*\)>/dbc:\1/g;
   s/<http:\/\/dbpedia.org\/ontology\/\([^>]*\)>/dbo:\1/g;
   s/<http:\/\/dbpedia.org\/property\/\([^>]*\)>/dbp:\1/g;
   s/<http:\/\/dbpedia.org\/resource\/\([^>]*\)>/dbr:\1/g;
   s/<http:\/\/purl.org\/dc\/elements\/1.1\/\([^>]*\)>/dc:\1/g;
   s/<http:\/\/purl.org\/dc\/terms\/\([^>]*\)>/dct:\1/g;
   s/<http:\/\/digg.com\/docs\/diggrss\/\([^>]*\)>/digg:\1/g;
   s/<http:\/\/www.ontologydesignpatterns.org\/ont\/dul\/DUL.owl\([^>]*\)>/dul:\1/g;
   s/<http:\/\/purl.oclc.org\/net\/rss_2.0\/enc#\([^>]*\)>/enc:\1/g;
   s/<http:\/\/www.w3.org\/2003\/12\/exif\/ns\/\([^>]*\)>/exif:\1/g;
   s/<http:\/\/api.facebook.com\/1.0\/\([^>]*\)>/fb:\1/g;
   s/<http:\/\/api.friendfeed.com\/2008\/03\([^>]*\)>/ff:\1/g;
   s/<http:\/\/www.w3.org\/2005\/xpath-functions\/#\([^>]*\)>/fn:\1/g;
   s/<http:\/\/xmlns.com\/foaf\/0.1\/\([^>]*\)>/foaf:\1/g;
   s/<http:\/\/rdf.freebase.com\/ns\/\([^>]*\)>/freebase:\1/g;
   s/<http:\/\/base.google.com\/ns\/1.0\([^>]*\)>/g:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/google-base#\([^>]*\)>/gb:\1/g;
   s/<http:\/\/schemas.google.com\/g\/2005\([^>]*\)>/gd:\1/g;
   s/<http:\/\/www.w3.org\/2003\/01\/geo\/wgs84_pos#\([^>]*\)>/geo:\1/g;
   s/<http:\/\/www.geonames.org\/ontology#\([^>]*\)>/geonames:\1/g;
   s/<http:\/\/www.georss.org\/georss\/\([^>]*\)>/georss:\1/g;
   s/<http:\/\/www.opengis.net\/gml\([^>]*\)>/gml:\1/g;
   s/<http:\/\/purl.org\/obo\/owl\/GO#\([^>]*\)>/go:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/hlisting\/\([^>]*\)>/hlisting:\1/g;
   s/<http:\/\/wwww.hoovers.com\/\([^>]*\)>/hoovers:\1/g;
   s/<http:\/\/www.purl.org\/stuff\/hrev#\([^>]*\)>/hrev:\1/g;
   s/<http:\/\/www.w3.org\/2002\/12\/cal\/ical#\([^>]*\)>/ical:\1/g;
   s/<http:\/\/web-semantics.org\/ns\/image-regions\([^>]*\)>/ir:\1/g;
   s/<http:\/\/www.itunes.com\/DTDs\/Podcast-1.0.dtd\([^>]*\)>/itunes:\1/g;
   s/<http:\/\/www.w3.org\/ns\/ldp#\([^>]*\)>/ldp:\1/g;
   s/<http:\/\/linkedgeodata.org\/vocabulary#\([^>]*\)>/lgv:\1/g;
   s/<http:\/\/www.xbrl.org\/2003\/linkbase\([^>]*\)>/link:\1/g;
   s/<http:\/\/lod.openlinksw.com\/\([^>]*\)>/lod:\1/g;
   s/<http:\/\/www.w3.org\/2000\/10\/swap\/math#\([^>]*\)>/math:\1/g;
   s/<http:\/\/search.yahoo.com\/mrss\/\([^>]*\)>/media:\1/g;
   s/<http:\/\/purl.org\/commons\/record\/mesh\/\([^>]*\)>/mesh:\1/g;
   s/<http:\/\/www.w3.org\/2001\/sw\/DataAccess\/tests\/test-manifest#\([^>]*\)>/mf:\1/g;
   s/<http:\/\/musicbrainz.org\/ns\/mmd-1.0#\([^>]*\)>/mmd:\1/g;
   s/<http:\/\/purl.org\/ontology\/mo\/\([^>]*\)>/mo:\1/g;
   s/<http:\/\/www.freebase.com\/\([^>]*\)>/mql:\1/g;
   s/<http:\/\/ncicb.nci.nih.gov\/xml\/owl\/EVS\/Thesaurus.owl#\([^>]*\)>/nci:\1/g;
   s/<http:\/\/www.semanticdesktop.org\/ontologies\/nfo\/#\([^>]*\)>/nfo:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/ning#\([^>]*\)>/ng:\1/g;
   s/<http:\/\/www.nytimes.com\/\([^>]*\)>/nyt:\1/g;
   s/<http:\/\/www.openarchives.org\/OAI\/2.0\/\([^>]*\)>/oai:\1/g;
   s/<http:\/\/www.openarchives.org\/OAI\/2.0\/oai_dc\/\([^>]*\)>/oai_dc:\1/g;
   s/<http:\/\/www.geneontology.org\/formats\/oboInOwl#\([^>]*\)>/obo:\1/g;
   s/<http:\/\/www.opengis.net\/\([^>]*\)>/ogc:\1/g;
   s/<http:\/\/www.opengis.net\/ont\/gml#\([^>]*\)>/ogcgml:\1/g;
   s/<http:\/\/www.opengis.net\/ont\/geosparql#\([^>]*\)>/ogcgs:\1/g;
   s/<http:\/\/www.opengis.net\/def\/function\/geosparql\/\([^>]*\)>/ogcgsf:\1/g;
   s/<http:\/\/www.opengis.net\/def\/rule\/geosparql\/\([^>]*\)>/ogcgsr:\1/g;
   s/<http:\/\/www.opengis.net\/ont\/sf#\([^>]*\)>/ogcsf:\1/g;
   s/<http:\/\/a9.com\/-\/spec\/opensearchrss\/1.0\/\([^>]*\)>/openSearch:\1/g;
   s/<http:\/\/sw.opencyc.org\/2008\/06\/10\/concept\/\([^>]*\)>/opencyc:\1/g;
   s/<http:\/\/www.openlinksw.com\/schema\/attribution#\([^>]*\)>/opl:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/getsatisfaction\/\([^>]*\)>/opl-gs:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/meetup\/\([^>]*\)>/opl-meetup:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/xbrl\/\([^>]*\)>/opl-xbrl:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/oplweb#\([^>]*\)>/oplweb:\1/g;
   s/<http:\/\/www.openarchives.org\/ore\/terms\/\([^>]*\)>/ore:\1/g;
   s/<http:\/\/www.w3.org\/2002\/07\/owl#\([^>]*\)>/owl:\1/g;
   s/<http:\/\/www.buy.com\/rss\/module\/productV2\/\([^>]*\)>/product:\1/g;
   s/<http:\/\/purl.org\/science\/protein\/bysequence\/\([^>]*\)>/protseq:\1/g;
   s/<http:\/\/backend.userland.com\/rss2\([^>]*\)>/r:\1/g;
   s/<http:\/\/www.radiopop.co.uk\/\([^>]*\)>/radio:\1/g;
   s/<http:\/\/www.w3.org\/1999\/02\/22-rdf-syntax-ns#\([^>]*\)>/rdf:\1/g;
   s/<http:\/\/www.w3.org\/ns\/rdfa#\([^>]*\)>/rdfa:\1/g;
   s/<http:\/\/www.openlinksw.com\/virtrdf-data-formats#\([^>]*\)>/rdfdf:\1/g;
   s/<http:\/\/www.w3.org\/2000\/01\/rdf-schema#\([^>]*\)>/rdfs:\1/g;
   s/<http:\/\/purl.org\/stuff\/rev#\([^>]*\)>/rev:\1/g;
   s/<http:\/\/www.purl.org\/stuff\/rev#\([^>]*\)>/review:\1/g;
   s/<http:\/\/purl.org\/rss\/1.0\/\([^>]*\)>/rss:\1/g;
   s/<http:\/\/purl.org\/science\/owl\/sciencecommons\/\([^>]*\)>/sc:\1/g;
   s/<http:\/\/purl.org\/NET\/scovo#\([^>]*\)>/scovo:\1/g;
   s/<http:\/\/www.w3.org\/ns\/sparql-service-description#\([^>]*\)>/sd:\1/g;
   s/<http:\/\/rdfs.org\/sioc\/ns#\([^>]*\)>/sioc:\1/g;
   s/<http:\/\/rdfs.org\/sioc\/types#\([^>]*\)>/sioct:\1/g;
   s/<http:\/\/www.openlinksw.com\/ski_resorts\/schema#\([^>]*\)>/skiresort:\1/g;
   s/<http:\/\/www.w3.org\/2004\/02\/skos\/core#\([^>]*\)>/skos:\1/g;
   s/<http:\/\/purl.org\/rss\/1.0\/modules\/slash\/\([^>]*\)>/slash:\1/g;
   s/<http:\/\/xbrlontology.com\/ontology\/finance\/stock_market#\([^>]*\)>/stock:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/twfy#\([^>]*\)>/twfy:\1/g;
   s/<http:\/\/umbel.org\/umbel#\([^>]*\)>/umbel:\1/g;
   s/<http:\/\/umbel.org\/umbel\/ac\/\([^>]*\)>/umbel-ac:\1/g;
   s/<http:\/\/umbel.org\/umbel\/rc\/\([^>]*\)>/umbel-rc:\1/g;
   s/<http:\/\/umbel.org\/umbel\/sc\/\([^>]*\)>/umbel-sc:\1/g;
   s/<http:\/\/purl.uniprot.org\/\([^>]*\)>/uniprot:\1/g;
   s/<http:\/\/dbpedia.org\/units\/\([^>]*\)>/units:\1/g;
   s/<http:\/\/www.rdfabout.com\/rdf\/schema\/uscensus\/details\/100pct\/\([^>]*\)>/usc:\1/g;
   s/<http:\/\/www.openlinksw.com\/xsltext\/\([^>]*\)>/v:\1/g;
   s/<http:\/\/www.w3.org\/2001\/vcard-rdf\/3.0#\([^>]*\)>/vcard:\1/g;
   s/<http:\/\/www.w3.org\/2006\/vcard\/ns#\([^>]*\)>/vcard2006:\1/g;
   s/<http:\/\/www.openlinksw.com\/virtuoso\/xslt\/\([^>]*\)>/vi:\1/g;
   s/<http:\/\/www.openlinksw.com\/virtuoso\/xslt\([^>]*\)>/virt:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/virtcxml#\([^>]*\)>/virtcxml:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/virtpivot#\([^>]*\)>/virtpivot:\1/g;
   s/<http:\/\/www.openlinksw.com\/schemas\/virtrdf#\([^>]*\)>/virtrdf:\1/g;
   s/<http:\/\/rdfs.org\/ns\/void#\([^>]*\)>/void:\1/g;
   s/<http:\/\/www.worldbank.org\/\([^>]*\)>/wb:\1/g;
   s/<http:\/\/www.w3.org\/2007\/05\/powder-s#\([^>]*\)>/wdrs:\1/g;
   s/<http:\/\/www.w3.org\/2005\/01\/wf\/flow#\([^>]*\)>/wf:\1/g;
   s/<http:\/\/wellformedweb.org\/CommentAPI\/\([^>]*\)>/wfw:\1/g;
   s/<http:\/\/dbpedia.openlinksw.com\/wikicompany\/\([^>]*\)>/wikicompany:\1/g;
   s/<http:\/\/www.wikidata.org\/entity\/\([^>]*\)>/wikidata:\1/g;
   s/<http:\/\/www.w3.org\/2004\/07\/xpath-functions\([^>]*\)>/xf:\1/g;
   s/<http:\/\/gmpg.org\/xfn\/11#\([^>]*\)>/xfn:\1/g;
   s/<http:\/\/www.w3.org\/1999\/xhtml\([^>]*\)>/xhtml:\1/g;
   s/<http:\/\/www.w3.org\/1999\/xhtml\/vocab#\([^>]*\)>/xhv:\1/g;
   s/<http:\/\/www.xbrl.org\/2003\/instance\([^>]*\)>/xi:\1/g;
   s/<http:\/\/www.w3.org\/XML\/1998\/namespace\([^>]*\)>/xml:\1/g;
   s/<http:\/\/www.ning.com\/atom\/1.0\([^>]*\)>/xn:\1/g;
   s/<http:\/\/www.w3.org\/2001\/XMLSchema#\([^>]*\)>/xsd:\1/g;
   s/<http:\/\/www.w3.org\/XSL\/Transform\/1.0\([^>]*\)>/xsl10:\1/g;
   s/<http:\/\/www.w3.org\/1999\/XSL\/Transform\([^>]*\)>/xsl1999:\1/g;
   s/<http:\/\/www.w3.org\/TR\/WD-xsl\([^>]*\)>/xslwd:\1/g;
   s/<http:\/\/dbpedia.org\/class\/yago\/\([^>]*\)>/yago:\1/g;
   s/<http:\/\/mpii.de\/yago\/resource\/\([^>]*\)>/yago-res:\1/g;
   s/<http:\/\/gdata.youtube.com\/schemas\/2007\([^>]*\)>/yt:\1/g;
   s/<http:\/\/s.zemanta.com\/ns#\([^>]*\)>/zem:\1/g;
' "$1" >> "$OUTPUT"

exit 0

