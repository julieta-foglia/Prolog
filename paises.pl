%esto es un comentario
es_un_pais(argentina).
es_un_pais(chile).
es_un_pais(uruguay).
es_un_pais(brasil).
es_un_pais(peru).
es_un_pais(bolivia).
es_un_pais(colombia).
es_un_pais(venezuela).
es_un_pais(paraguay).
es_un_pais(ecuador).
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

