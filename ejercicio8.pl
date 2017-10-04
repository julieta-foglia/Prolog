%esto es un comentario
es_un_pais(argentina,40).
es_un_pais(chile,10).
es_un_pais(uruguay,12).
es_un_pais(brasil,100).
es_un_pais(peru,50).
es_un_pais(bolivia,30).
es_un_pais(colombia,30).
es_un_pais(venezuela,25).
es_un_pais(paraguay,25).
es_un_pais(ecuador,15).
limita_con(argentina,chile).
limita_con(argentina,brasil).
limita_con(brasil,uruguay).
limita_con(argentina,paraguay).
limita_con(argentina,bolivia).
limita_con(colombia,venezuela).
limita_con(colombia,ecuador).
limita_con(bolivia,peru).
limita_con(argentina,uruguay).
son_limitrofes(X,Y):-limita_con(X,Y);limita_con(Y,X).
son_translimitrofes(X,Y):-son_limitrofes(X,Z),son_limitrofes(Z,Y),not(son_limitrofes(X,Y)),dif(X,Y).
prod_cat(X,Y,A,B):-es_un_pais(X,Y),es_un_pais(A,B).
seleccion(X,Y,A,B):-prod_cat(X,Y,A,B),Y<B.
proyeccion(X,Y):-seleccion(X,Y,_,_).
maxsup(X,Y):-es_un_pais(X,Y),not(proyeccion(X,Y)).

