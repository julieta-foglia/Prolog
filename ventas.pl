ventas(enero, 1342).
ventas(febrero, 4231).
ventas(marzo, 5121).
ventas(abril, 5121).

prod_cat(X,Y,Z,W):-ventas(X,Y),ventas(Z,W),dif(X,Z).
seleccion(X,Y,Z,W):-prod_cat(X,Y,Z,W),Y<W.
proyeccion(X):-seleccion(X,_,_,_).
maximo(X,Y):-ventas(X,Y),not(proyeccion(X)).
