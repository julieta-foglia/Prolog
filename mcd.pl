mcd(X,X,X):-!.
mcd(X,Y,F):-X<Y,mcd(Y,X,F),!.
mcd(X,Y,F):-F1 is X-Y,mcd(F1,Y,F).
