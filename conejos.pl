conejos(0,1):-!.
conejos(1,1):-!.
conejos(N,F):-N1 is N-1,N2 is N-2,conejos(N1,F1),conejos(N2,F2),F is F1+F2.
