hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(maria).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maria).

%niño(X,Y)//expresa que X es hijo o hija de Y.
%hijo(X,Y)//expresa que X es un hijo varón de Y.
%hija(x,y)//expresa que X es una hija de Y.
%hermano-o-hermana(X,Y)//expresa que X es hermano o hermana de Y.
%hermano(X,Y)//expresa que X es un hermano de Y.
%hermana(X,Y)//expresa que X es una hermana de Y.
%Nota:  Un individuo no puede ser hermano ni  hermana de sí mismo.
niño(X,Y):-padre(Y,X).
hijo(X,Y):-padre(Y,X),hombre(X).
hija(X,Y):-padre(Y,X),mujer(X).
hermano_o_hermana(X,Y):-(padre(Z,Y),padre(Z,X)),dif(X,Y).
hermano(X,Y):-(padre(Z,Y),padre(Z,X)),hombre(X),dif(X,Y).
hermana(X,Y):-(padre(Z,Y),padre(Z,X)),mujer(X),dif(X,Y).
