%clauses
transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).
%finclauses

%interpretables respectivamente por:  P= X*Y;  S= X+Y ;  X<Y.
multiplicar(P,X,Y):-P is X*Y.
sumar(S,X,Y):-S is X+Y.
menor(X,Y):-X<Y.

viaje(C,S,H,P):-alojamiento(C,H,P1),transporte(C,P2),multiplicar(P3,P1,S)
,sumar(P,P2,P3).
viajeeconomico(C,S,H,P,Pmax):-alojamiento(C,H,P1),transporte(C,P2),multiplicar(P3,P1,S),sumar(P,P2,P3),menor(P,Pmax).
