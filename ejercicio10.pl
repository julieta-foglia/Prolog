%gauss: (X*(X+1))/2
gauss(0,0):-!.
gauss(X,F):-X1 is X-1,gauss(X1,F1),F is X+F1.

%fibonacci.
fibonacci(1,1):-!.
fibonacci(2,2):-!.
fibonacci(X,F):-X1 is X-1, X2 is X-2,fibonacci(X1,F1),fibonacci(X2,F2),F is F1+F2.

%factorial: N! = N·(N-1)!.
factorial(0,1):-!.
factorial(X,F):-X1 is X-1,factorial(X1,F1),F is X*F1.

%producto de dos numeros  X e Y, aplicando sumas sucesivas.
producto(0,_,0):-!.
producto(X,Y,F):- X1 is X-1,producto(X1,Y,F1),F is Y+F1.

%potencia N de un numero X aplicando multiplicaciones sucesivas.
potencia(0,0,'ERROR'):-!.
potencia(X,0,1):-X=\=0,!.
potencia(X,Y,F):-Y1 is Y-1, potencia(X,Y1,F1),F is F1*X.

%el cociente entre dos números a partir de restas sucesivas.
cociente(_,0,'ERROR'):-!.
cociente(X,Y,0):-X<Y,!.
cociente(X,Y,F):-X>=Y,X1 is X-Y,cociente(X1,Y,F1),F is F1+1.

%mcd (+X,+Y,?Z) que se verifique si Z es el máximo común divisor entre X e Y.
mcd(X,0,X):-X>0.
mcd(X,Y,Z):-X<Y,mcd(Y,X,Z).
mcd(X,Y,Z):-X>=Y,Y > 0,X1 is X mod Y,mcd(Y,X1,Z).
