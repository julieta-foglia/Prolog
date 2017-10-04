%encontrar a los antecesores de una persona

padre_de(luis, pedro).
padre_de(carlos, fernando).
padre_de(antonio, maria).
padre_de(antonio, carlos).


antecesor_de(X, Y):-padre_de(X,Y).
antecesor_de(X, Y):-padre_de(X,Z), antecesor_de(Z,Y).

