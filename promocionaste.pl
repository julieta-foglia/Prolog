parcial1(ana,7).
parcial1(juan,4).
parcial1(pedro,2).
parcial1(fede,10).
parcial1(juli,9).
parcial1(pepe,7).
parcial2(ana,9).
parcial2(juan,6).
parcial2(pedro,10).
parcial2(fede,4).
parcial2(juli,5).
parcial2(pepe,7).

dividir(D,X,Y):-D is X/Y.
sumar(S,X,Y):-S is X+Y.
mayor_o_igual(X,Y):-X>=Y.
menor(X,Y):-X<Y.

promocion(P,N):-parcial1(P,N1),mayor_o_igual(N1,7),parcial2(P,N2),mayor_o_igual(N2,7)
,sumar(NT,N1,N2),dividir(N,NT,2).

cursada(P):-(parcial1(P,N1),mayor_o_igual(N1,4),menor(N1,7));(parcial2(P,N2)
,mayor_o_igual(N2,4),menor(N2,7)).

recursada(P):-(parcial1(P,N1),menor(N1,4));(parcial2(P,N2),menor(N2,4)).
