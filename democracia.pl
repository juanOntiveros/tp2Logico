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
edad(garrett, 64).
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

sePostula(buenosAires,  rojo).
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

%  ----- Punto 4 del TP -----

esDeMenorEdadA(Candidato, OtroCandidato) :-
    edad(Candidato, Edad),
    edad(OtroCandidato, OtraEdad),
    Edad < OtraEdad.

esDeMayorEdadA(Candidato, OtroCandidato) :-
    edad(Candidato, Edad),
    edad(OtroCandidato, OtraEdad),
    Edad > OtraEdad.

tieneUnaEdadMasChica(Candidato, Partido) :-
    sonAmbosCandidatos(Candidato, SegundoCandidato, Partido, Partido),
    esDeMenorEdadA(Candidato, SegundoCandidato).

tieneUnaEdadIntermedia(Candidato, Partido) :- 
    candidato(Candidato, Partido),
    candidato(SegundoCandidato, Partido),
    candidato(TercerCandidato, Partido),
    SegundoCandidato \= TercerCandidato,
    esDeMenorEdadA(Candidato, SegundoCandidato),
    esDeMayorEdadA(Candidato, TercerCandidato).

esElMasJovenDeSuPartido(Candidato) :-
    candidato(Candidato, Partido),
    tieneUnaEdadMasChica(Candidato, Partido),
    not(tieneUnaEdadIntermedia(Candidato, Partido)).

ganaLaProvincia(Candidato, Partido, Provincia) :-
    candidato(OtroCandidato, OtroPartido),
    OtroPartido \= Partido,
    leGanaA(Candidato, OtroCandidato, Provincia).

ganaEnTodasLasProvincias(Candidato) :-
    candidato(Candidato, Partido),
    forall(sePostula(Provincia, Partido), ganaLaProvincia(Candidato, Partido, Provincia)).

elGranCandidato(Candidato) :-
    ganaEnTodasLasProvincias(Candidato),
    esElMasJovenDeSuPartido(Candidato).

/*

¿Cómo podemos estar seguros de esto?

Podemos estar seguros de esto ya que se cumplen dos cosas: 

- De todos los candidatos, los unicos que ganan en todas las provincias son los candidatos del 
partido rojo. Esto pasa porque en las provincias que se presentan o tienen mayora intencion de 
voto o no hay partidos que les presenten oposicion ya que no se presentan.
- Del mismo partido rojo, el candidato de menor edad es frank.

¿Qué tipo de consulta deberíamos realizar? 

- Primero consultamos que candidato gana en todas las provincias, quedando solo los del partido 
rojo (frank, claire, catherine).
- Luego consultamos cuales son los candidatos mas jovenes de sus partidos (frank, linda, jackie).
- El unico que cumple las dos condiciones es frank.  

¿Con qué concepto está relacionado?

- Inversibilidad? Cuantificador Universal? 

*/

%  ----- Punto 5 del TP -----

tieneUnaIntencionDeVoto(Provincia, Partido, Intencion) :-
    candidato(_, Partido),
    intencionDeVotoEn(Provincia, Partido, Intencion).

tieneMayorIntencionDeVotoA(Partido, UnaIntencion, Provincia):-
    intencionDeVotoEn(Provincia, Partido, OtraIntencion),
    OtraIntencion > UnaIntencion.

tieneMenorIntencionDeVotoA(Partido, UnaIntencion, Provincia):-
    intencionDeVotoEn(Provincia, Partido, OtraIntencion),
    OtraIntencion < UnaIntencion.

tieneUnaIntencionIntermedia(Provincia, Intencion) :-
    candidato(_, SegundoPartido),
    candidato(_, TercerPartido),
    SegundoPartido \= TercerPartido,
    tieneMenorIntencionDeVotoA(SegundoPartido, Intencion, Provincia),
    tieneMayorIntencionDeVotoA(TercerPartido, Intencion, Provincia).

tieneUnaIntencionAlta(Provincia, Intencion) :-
    candidato(_, SegundoPartido),
    tieneMenorIntencionDeVotoA(SegundoPartido, Intencion, Provincia).

tieneUnaIntencionBaja(Provincia, Intencion) :-
    candidato(_, SegundoPartido),
    tieneMayorIntencionDeVotoA(SegundoPartido, Intencion, Provincia).

tieneUnaIntencionGanadora(Provincia, Intencion) :-
    tieneUnaIntencionAlta(Provincia, Intencion),
    not(tieneUnaIntencionIntermedia(Provincia, Intencion)).

tieneUnaIntencionPerdedora(Provincia, Intencion) :-
    tieneUnaIntencionBaja(Provincia, Intencion),
    not(tieneUnaIntencionIntermedia(Provincia, Intencion)).

tieneUnaIntencionPerdedora(Provincia, Intencion) :-
    tieneUnaIntencionIntermedia(Provincia, Intencion).

ajusteConsultora(Partido, Provincia, Porcentaje) :-
    tieneUnaIntencionDeVoto(Provincia, Partido, Intencion),
    tieneUnaIntencionGanadora(Provincia, Intencion),
    Porcentaje is Intencion - 20.

ajusteConsultora(Partido, Provincia, Porcentaje) :-
    tieneUnaIntencionDeVoto(Provincia, Partido, Intencion),
    tieneUnaIntencionPerdedora(Provincia, Intencion),
    Porcentaje is Intencion + 5.

/*

Si ahora quisiéramos evaluar todos los predicados con los valores reales de votos,
¿Qué cambios deberíamos hacer? ¿Cuántos predicados deberíamos modificar?

- Deberiamos modificar las clausulas de intencionDeVotoEn/3 con las verdaderas intenciones
de voto. 

Por ejemplo si consultaramos sin modificar:
?- intencionDeVotoEn(buenosAires, rojo, Intencion)
Intencion = 40

Si quisieramos su verdadera intencion de voto deberiamos modificar el predicado a la forma:
intencionDeVotoEn(buenosAires, rojo, 20).

- Habria que modificar todas las clausulas de un unico predicado.

*/

%  ----- Punto 6 del TP -----

promete(azul, construir([edificio(hospital, 1000), edificio(jardin, 100), edificio(escuela, 5)])).
promete(amarillo, construir([edificio(hospital, 100), edificio(universidad, 1), edificio(comisaria,200)])).

promete(rojo, nuevosPuestosDeTrabajo(800000)).
promete(amarillo, nuevosPuestosDeTrabajo(10000)).

promete(azul, inflacion(2,4)).
promete(amarillo, inflacion(1,15)).
promete(rojo, inflacion(10,30)).

%  ----- Punto 7 del TP -----

valorASumarORestarDeCadaPromesa(ListaDeObras, 2) :-
    member(edificio(hospital, _), ListaDeObras).

valorASumarORestarDeCadaPromesa(ListaDeObras, Variacion) :-
    member(edificio(jardin, Cantidad), ListaDeObras),
    Variacion is (Cantidad * 0.1).

valorASumarORestarDeCadaPromesa(ListaDeObras, Variacion) :-
    member(edificio(escuela, Cantidad), ListaDeObras),
    Variacion is (Cantidad * 0.1).

valorASumarORestarDeCadaPromesa(ListaDeObras, 2) :-
    member(edificio(comisaria, 200), ListaDeObras).

valorASumarORestarDeCadaPromesa(ListaDeObras, 0) :-
    member(edificio(universidad, _), ListaDeObras).

valorASumarORestarDeCadaPromesa(ListaDeObras, -1) :-
    member(edificio(OtroEdificio, _), ListaDeObras),
    OtroEdificio \= comisaria,
    OtroEdificio \= hospital,
    OtroEdificio \= escuela,
    OtroEdificio \= jardin,
    OtroEdificio \= universidad.

influenciaDePromesas(inflacion(CotaInferior, CotaSuperior), Variacion) :-
    Variacion is (-1) * (CotaInferior + CotaSuperior) / 2.

influenciaDePromesas(nuevosPuestosDeTrabajo(PuestosPrometidos), 3) :-
    PuestosPrometidos > 50000.

influenciaDePromesas(nuevosPuestosDeTrabajo(PuestosPrometidos), 0) :-
    PuestosPrometidos =< 50000.

influenciaDePromesas(construir(ListaDeObras), Variacion) :-
    findall(Valor, valorASumarORestarDeCadaPromesa(ListaDeObras,Valor), Valores),
    sumlist(Valores, Variacion).