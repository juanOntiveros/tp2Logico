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