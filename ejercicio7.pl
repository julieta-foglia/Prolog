entrada(paella,10).
entrada(gazpacho,10).
entrada(consome,20).
carne(filete_de_cerdo,25).
carne(pollo_asado,15).
pescado(trucha,5).
pescado(bacalao,5).
postre(flan,100).
postre(helado,300).
postre(pastel,500).
bebida(vino,150).
bebida(cerveza,125).
bebida(agua_mineral,1).
es_menu(X,Y,Z,T):-entrada(X,C1),(carne(Y,C2);pescado(Y,C2)),postre(Z,C3),T is C1+C2+C3.
prod_cat(X,Y,Z,T,A,B,C,D):-es_menu(X,Y,Z,T),es_menu(A,B,C,D).
seleccion(X,Y,Z,T,A,B,C,D):-prod_cat(X,Y,Z,T,A,B,C,D),T>D.
proyeccion(X,Y,Z,T):-seleccion(X,Y,Z,T,_,_,_,_).
minimo(X,Y,Z,T):-es_menu(X,Y,Z,T),not(proyeccion(X,Y,Z,T)).
es_menu_con_bebida(X,Y,Z,W):-entrada(X),(carne(Y);pescado(Y)),postre(Z),
    bebida(W).
