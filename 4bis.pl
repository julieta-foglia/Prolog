parcial1(ana,7).
parcial1(juan,4).
parcial2(juan,8).
parcial2(ana,8).

mayor(X,Y):-X>=Y.
suma(X,Y,Z):-X is Y+Z.
promedio(X,Y,Z):-X is suma(X,Y,Z)/2.
promocion(X,Y):-parcial1(X,N1),mayor(N1,7),parcial2(X,N2),mayor(N2,7),promedio(Y,N1,N2).
