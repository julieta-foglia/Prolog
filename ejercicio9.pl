semestre1(ana,25000).
semestre1(pablo,10000).
semestre1(juan,33000).
semestre2(ana,20000).
semestre2(carlos,3000).
semestre2(juan,34000).

ventasprimero(X):-semestre1(X,_).
ventassegundo(X):-semestre2(X,_).
mayor(Y):-Y>20000.
suma(X,Y,T):-T is X+Y.
comision(X,C):-(semestre1(X,C1),semestre2(X,C2),mayor(C1),mayor(C2),suma(C1,C2,C3),C is C3*0.2);(semestre1(X,C1),semestre2(X,C2),((mayor(C1),not(mayor(C2)),suma(C1,C2,C3),C is C3*0.1);(mayor(C2),not(mayor(C1)),suma(C1,C2,C3),C is C3*0.1)));(((semestre1(X,C1),not(semestre2(X,_)),C is C1*0.05);(semestre2(X,C2),not(semestre1(X,_)),C is C2*0.05))).


