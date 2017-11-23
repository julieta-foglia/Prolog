hombre(juan,alta,rubio,joven).
hombre(pedro,media,castaño,adulta).
hombre(pablo,alta,negro,viejo).
mujer(maria,media,pelirrojo,vieja).
mujer(marta,media,pelirrojo,vieja).
mujer(juana,baja,negro,joven).
mujer(valeria,media,rubio,vieja).
gusta(juan,pop,aventura,tenis).
gusta(juana,pop,aventura,tenis).
gusta(pedro,jazz,policiaca,natacion).
gusta(maria,jazz,policiaca,natacion).
gusta(marta,jazz,policiaca,natacion).
gusta(pablo,pop,policiaca,jogging).
gusta(valeria,pop,policiaca,jogging).
busca(juan,baja,negro,joven).
busca(pedro,media,pelirrojo,vieja).
busca(valeria,alta,negro,viejo).


pareja(X,Y):-(busca(X,A,B,C),mujer(Y,A,B,C),gusta(X,D,E,F),gusta(Y,D,E,F));
(busca(X,A,B,C),hombre(Y,A,B,C),gusta(X,D,E,F),gusta(Y,D,E,F)).
