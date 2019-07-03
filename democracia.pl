%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ----- Punto 1 del TP -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ----- Punto 2 del TP -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ----- Punto 3 del TP -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
leGanaA(UnCandidato, OtroCandidato, Provincia):- 
    candidato(UnCandidato, UnPartido),
    sePostula(Provincia, UnPartido),
    candidato(OtroCandidato, OtroPartido),
    ganaA(UnPartido, OtroPartido, Provincia).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ganaA(_, OtroPartido, Provincia):-
    not(sePostula(Provincia, OtroPartido)).

ganaA(UnPartido, UnPartido, Provincia) :-
    sePostula(Provincia, UnPartido).
/*ganaA(unPartido, OtroPartido, Provincia):-
    not(UnPartido \= OtroPartido),
    sePostula(Provincia, UnPartido).*/

ganaA(UnPartido, OtroPartido, Provincia) :-
    sePostula(Provincia, OtroPartido),
    intencionDeVotoEn(Provincia, UnPartido, UnaIntencion),
    intencionDeVotoEn(Provincia, OtroPartido, OtraIntencion),
    UnaIntencion > OtraIntencion.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ----- Punto 4 del TP -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
candidatoDistinto(Candidato, OtroCandidato, Partido) :- 
    candidato(Candidato, Partido), 
    Candidato \=  OtroCandidato.

candidatosEnProvincia(Provincia, Candidatos):-
    sePostula(Provincia, Partido),
    candidato(Candidatos, Partido).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
esDeMenorEdadA(Candidato, OtroCandidato) :-
    edad(Candidato, Edad),
    edad(OtroCandidato, OtraEdad),
    Edad < OtraEdad.

esElMasJovenDeSuPartido(Candidato, Partido) :-
    candidato(Candidato, Partido),
    forall(candidatoDistinto(OtroCandidato, Candidato, Partido), esDeMenorEdadA(Candidato, OtroCandidato)).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ganaEnVotos(Partido, OtroPartido) :-
    intencionDeVotoEn(Provincia, Partido, VotosPartido),
    intencionDeVotoEn(Provincia, OtroPartido, VotosOtroPartido),
    Partido\=OtroPartido,
    VotosPartido > VotosOtroPartido.

ganaLaProvincia(Candidato, Partido, Provincia) :-
    candidato(OtroCandidato, OtroPartido),
    OtroPartido \= Partido,
    leGanaA(Candidato, OtroCandidato, Provincia).

ganaEnTodasLasProvincias(Candidato) :-
    candidato(Candidato, Partido),
    forall(sePostula(Provincia, Partido), ganaLaProvincia(Candidato, Partido, Provincia)).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elGranCandidato(Candidato) :-
    candidato(Candidato, _),
    ganaEnTodasLasProvincias(Candidato),
    esElMasJovenDeSuPartido(Candidato, _).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/*
Maxi:
en una de las cláusulas del predicado ganaA\2, aparece esto:
ganaA(unPartido, OtroPartido, Provincia) :-
  not(UnPartido\=OtroPartido),
  ....

mas allá que unPartido está en minuscula, por ende es un atomo y no una variable, 
para poder resolver el problema de que los partidos sean iguales, lo podrian haber resuelto así:
ganaA(UnPartido, UnPartido, Provincia) :-
...

Y se aseguran que prolog va a unificar la variable con valores iguales!
*/

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

Maxi: En realidad cuando se pregunta sobre el tipo de consulta en el enunciado, se hace referencia a la consulta
con una variable. Al realizarla, podemos ver la unificación que hace prolog con la variable, y darnos
cuenta que el único que cumple la condición es Frank.
*/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ----- Punto 5 del TP -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
partidoQueGanaEn(Partido, Provincia) :-
    sePostula(Provincia, OtroPartido),
    forall(sePostula(Provincia, Partido), ganaEnVotos(Partido, OtroPartido, Provincia)),
    Partido\=OtroPartido.

ganaEnVotos(Partido, OtroPartido, Provincia) :-
    intencionDeVotoEn(Provincia, Partido, VotosPartido),
    intencionDeVotoEn(Provincia, OtroPartido, VotosOtroPartido),
    Partido\=OtroPartido,
    VotosPartido > VotosOtroPartido.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ajusteConsultora(Partido, Provincia, Porcentaje) :-
  intencionDeVotoEn(Partido, Provincia, Intencion),
  ajustePorcentaje(Partido, Provincia, Intencion, Porcentaje).

ajustePorcentaje(Partido, Provincia, Intencion, Porcentaje) :-
    partidoQueGanaEn(Partido, Provincia),
    Porcentaje is Intencion - 20.

ajustePorcentaje(Partido, Provincia, Intencion, Porcentaje) :-
    not(partidoQueGanaEn(Partido, Provincia)),
    Porcentaje is Intencion + 5.

/*
Maxi:
ajustePorcentaje\3 sigue teniendo los mismos problemas que tenia antes ajusteConsultora\3. 
La idea mas que nada era generar en ajusteConsultora\3 para no repetirlos en ajustePorcentaje\3. 
Algo asi:
ajusteConsultora(Partido, Provincia, Porcentaje) :-
  intencionDeVotoEn(Partido, Provincia, Intencion),
  ajustePorcentaje(Partido, Provincia, Intencion, Porcentaje).

Con esto nos aseguramos no repetir intencionDeVotoEn\2
*/

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ----- Punto 6 del TP -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
promete(azul, construir([edificio(hospital, 1000), edificio(jardin, 100), edificio(escuela, 5)])).
promete(amarillo, construir([edificio(hospital, 100), edificio(universidad, 1), edificio(comisaria,200)])).

promete(rojo, nuevosPuestosDeTrabajo(800000)).
promete(amarillo, nuevosPuestosDeTrabajo(10000)).

promete(azul, inflacion(2,4)).
promete(amarillo, inflacion(1,15)).
promete(rojo, inflacion(10,30)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ----- Punto 7 del TP -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
edificicioImportante(hospital).
edificicioImportante(jardin).
edificicioImportante(escuela).
edificicioImportante(comisaria).
edificicioImportante(universidad).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
variacionIntencionDeVoto(construir(edificio(hospital, _)), 2).

variacionIntencionDeVoto(construir(edificio(comisaria, 200)), 2).

variacionIntencionDeVoto(construir(edificio(universidad, _)), 0).

variacionIntencionDeVoto(inflacion(CotaInferior, CotaSuperior), Variacion):-
    Variacion is (-1) * (CotaInferior + CotaSuperior) / 2.
 
variacionIntencionDeVoto(nuevosPuestosDeTrabajo(PuestosPrometidos), 3) :-
    PuestosPrometidos > 50000.

variacionIntencionDeVoto(nuevosPuestosDeTrabajo(PuestosPrometidos), 0) :-
    PuestosPrometidos =< 50000.

variacionIntencionDeVoto(construir(edificio(jardin, Cantidad)), Variacion) :-
    Variacion is (Cantidad * 0.1).

variacionIntencionDeVoto(construir(edificio(escuela, Cantidad)), Variacion) :-
    Variacion is (Cantidad * 0.1).

variacionIntencionDeVoto(construir(edificio(OtroEdificio, _)), -1) :-
    not(edificicioImportante(OtroEdificio)).

variacionIntencionDeVoto(construir([PrimeraConstruccion | OtrasConstrucciones]), Variacion) :-
    sumaVariacionesDePromesa(construir([PrimeraConstruccion | OtrasConstrucciones]), Variacion).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sumaVariacionesDePromesa(construir(ListaDeConstrucciones), Total) :-
    findall(Variacion, (member(Construccion, ListaDeConstrucciones), variacionIntencionDeVoto(construir(Construccion), Variacion)), Variaciones),
    sumlist(Variaciones, Total).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
influenciaDePromesas(Promesa, Variacion) :-
    promete(_, Promesa),
    variacionIntencionDeVoto(Promesa, Variacion).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*
Maxi:
Mucho mejor influenciaDePromesas\2! Igualmente una cosa para corregir:

- Al partir influenciaDePromesas\2 en dos clausulas terminaron repitiendo 
generadores en las dos. Para corregir esto, podrían delegar el tema de las 
construcciones directamente a variacionDeIntencionDeVoto\2, y todos los manejos 
de los edificios a un predicado diferente. Es decir que, influenciaDePromesas\2 
solo tendria que "Consultar" a variacionDeIntencionDeVoto\2 para cualquier 
promesa, variacionDeIntencionDeVoto\2 solo se manejaria con el functor 
construir (Y las otras promesas tambien), donde estaria la sumatoria, y el 
predicado que diga los valores de cada edificio seria otro aparte.

- Ojo tambien con hacer pattern matching donde no lo utilizan o no es necesario!
*/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ----- Punto 8 del TP -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
calcularVariaciones(Promesas, Variacion) :-  
    member(Promesa, Promesas),
    influenciaDePromesas(Promesa, Variacion).

promedioDeCrecimiento(Partido, Sumatoria) :-
    promete(Partido, _),
    findall(Promesa, promete(Partido, Promesa), Promesas),
    findall(Variacion, calcularVariaciones(Promesas, Variacion), Variaciones),
    sumlist(Variaciones, Sumatoria).

/*
Maxi:
	- Esta bien, solo le cambiaria en realizar una delegacion de los findall, pero eso es a mi gusto.
*/