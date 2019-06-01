% ----- Punto 1 del TP -----

partido(rojo).
partido(azul).
partido(amarillo).
partido(violeta).

candidato(frank, rojo).
candidato(claire, rojo).
candidato(catherine, rojo).
candidato(garrett, azul).
candidato(linda, azul).
candidato(jackie, amarillo).
candidato(seth, amarillo).
candidato(heather, amarillo).

edad(frank, 50).
edad(claire, 52).
edad(garret, 64).
edad(peter, 26).
edad(jackie, 38).
edad(linda, 30).
edad(catherine, 59).
edad(heather, 50).

sePostula(buenosAires, azul).
sePostula(chaco, azul).
sePostula(tierraDelFuego, azul).
sePostula(sanLuis, azul).
sePostula(neuquen, azul).
sePostula(buenosAires, rojo).
sePostula(santaFe, rojo).
sePostula(cordoba, rojo).
sePostula(chubut, rojo).
sePostula(tierraDelFuego, rojo).
sePostula(sanLuis, rojo).
sePostula(chaco, amarillo).
sePostula(formosa, amarillo).
sePostula(tucuman, amarillo).
sePostula(salta, amarillo).
sePostula(santaCruz, amarillo).
sePostula(laPampa, amarillo).
sePostula(corriente, amarillo).
sePostula(misiones, amarillo).
sePostula(buenosAires, amarillo).

cantidadDeHabitantes(buenosAires, 15355000).
cantidadDeHabitantes(chaco, 1143201).
cantidadDeHabitantes(tierraDelFuego, 160720).
cantidadDeHabitantes(sanLuis, 489255).
cantidadDeHabitantes(neuquen, 637913).
cantidadDeHabitantes(santaFe, 3397532).
cantidadDeHabitantes(cordoba, 3567654).
cantidadDeHabitantes(chubut, 577466).
cantidadDeHabitantes(formosa, 527895).
cantidadDeHabitantes(tucuman, 1687305).
cantidadDeHabitantes(salta, 1333365).
cantidadDeHabitantes(santaCruz, 273964).
cantidadDeHabitantes(laPampa, 349299).
cantidadDeHabitantes(corriente, 992595).
cantidadDeHabitantes(misiones, 1189446).

/*

No se refleja en la base de conocimientos porque no es necesario explicitarlo que:

- Peter no es candidato del partido Amarillo.
- El partido violeta no tiene candidatos.

*/

% ----- Punto 2 del TP -----

sePresentanAlMenosDosPartidos(Provincia) :-
    sePostula(Provincia, UnPartido),
    sePostula(Provincia, OtroPartido),
    UnPartido \= OtroPartido.

tieneMasDeUnMillonDeHabitantes(Provincia) :-
    cantidadDeHabitantes(Provincia, Habitantes),
    Habitantes > 1000000.

esPicante(Provincia) :- 
    sePresentanAlMenosDosPartidos(Provincia),
    tieneMasDeUnMillonDeHabitantes(Provincia).

%  ----- Punto 3 del TP -----

intencionDeVotoEn(buenosAires, rojo, 40).
intencionDeVotoEn(buenosAires, azul, 30).
intencionDeVotoEn(buenosAires, amarillo, 30).
intencionDeVotoEn(chaco, rojo, 50).
intencionDeVotoEn(chaco, azul, 20).
intencionDeVotoEn(chaco, amarillo, 0).
intencionDeVotoEn(tierraDelFuego, rojo, 40).
intencionDeVotoEn(tierraDelFuego, azul, 20).
intencionDeVotoEn(tierraDelFuego, amarillo, 10).
intencionDeVotoEn(sanLuis, rojo, 50).
intencionDeVotoEn(sanLuis, azul, 20).
intencionDeVotoEn(sanLuis, amarillo, 0).
intencionDeVotoEn(neuquen, rojo, 80).
intencionDeVotoEn(neuquen, azul, 10).
intencionDeVotoEn(neuquen, amarillo, 0).
intencionDeVotoEn(santaFe, rojo, 20).
intencionDeVotoEn(santaFe, azul, 40).
intencionDeVotoEn(santaFe, amarillo, 40).
intencionDeVotoEn(cordoba, rojo, 10).
intencionDeVotoEn(cordoba, azul, 60).
intencionDeVotoEn(cordoba, amarillo, 20).
intencionDeVotoEn(chubut, rojo, 15).
intencionDeVotoEn(chubut, azul, 15).
intencionDeVotoEn(chubut, amarillo, 15).
intencionDeVotoEn(formosa, rojo, 0).
intencionDeVotoEn(formosa, azul, 0).
intencionDeVotoEn(formosa, amarillo, 0).
intencionDeVotoEn(tucuman, rojo, 40).
intencionDeVotoEn(tucuman, azul, 40).
intencionDeVotoEn(tucuman, amarillo, 20).
intencionDeVotoEn(salta, rojo, 30).
intencionDeVotoEn(salta, azul, 60).
intencionDeVotoEn(salta, amarillo, 10).
intencionDeVotoEn(santaCruz, rojo, 10).
intencionDeVotoEn(santaCruz, azul, 20).
intencionDeVotoEn(santaCruz, amarillo, 30).
intencionDeVotoEn(laPampa, rojo, 25).
intencionDeVotoEn(laPampa, azul, 25).
intencionDeVotoEn(laPampa, amarillo, 40).
intencionDeVotoEn(corrientes, rojo, 30).
intencionDeVotoEn(corrientes, azul, 30).
intencionDeVotoEn(corrientes, amarillo, 10).
intencionDeVotoEn(misiones, rojo, 90).
intencionDeVotoEn(misiones, azul, 0).
intencionDeVotoEn(misiones, amarillo, 0).

sonAmbosCandidatos(UnCandidato, OtroCandidato, UnPartido, OtroPartido) :- 
    candidato(UnCandidato, UnPartido),
    candidato(OtroCandidato, OtroPartido).

leGanaA(UnCandidato, OtroCandidato, Provincia) :-
    sonAmbosCandidatos(UnCandidato, OtroCandidato, UnPartido, OtroPartido), 
    sePostula(Provincia, UnPartido),
    not(sePostula(Provincia, OtroPartido)).

leGanaA(UnCandidato, OtroCandidato, Provincia) :-
    sonAmbosCandidatos(UnCandidato, OtroCandidato, UnPartido, OtroPartido),
    not(UnPartido \= OtroPartido),
    sePostula(Provincia, UnPartido).

leGanaA(UnCandidato, OtroCandidato, Provincia) :-
    sonAmbosCandidatos(UnCandidato, OtroCandidato, UnPartido, OtroPartido),
    sePostula(Provincia, UnPartido),
    sePostula(Provincia, OtroPartido),
    intencionDeVotoEn(Provincia, UnPartido, UnaIntencion),
    intencionDeVotoEn(Provincia, OtroPartido, OtraIntencion),
    UnaIntencion > OtraIntencion.

