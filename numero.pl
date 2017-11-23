numero(1).
numero(2).
numero(3).
numero(4).


%terna(X,Y,Z):-numero(X),!,numero(Y),numero(Z).
%funcion(X,Y):-X<0, Y is -1*X,!.
%funcion(X,0):-X==0,!.
%funcion(X,X):-X>0.

prod_cat(X,Y):-numero(X),numero(Y).
seleccion(X,Y):-prod_cat(X,Y),X<Y.
proyeccion(X):-seleccion(X,_).
maximo(X):-numero(X),not(proyeccion(X)).
seleccion2(X):-prod_cat(X,Y),X>Y.
minimo(X):-numero(X),not(proyeccion(X)).




