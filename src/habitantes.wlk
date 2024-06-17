class Persona{
	const edad
	
	method potencia()= 20
	method inteligencia()= if(edad>=20 and edad<=40) 12 else 8
	method esDestacado() = edad==25 or edad ==35
	 
	
}
class Atleta inherits Persona{
	var masaMuscular = 4
	var cantDeTecnicas= 2
	override method potencia()= super() + (masaMuscular*cantDeTecnicas)
	override method esDestacado()= super() or cantDeTecnicas>5
	method entrenar(cantDeDias) {masaMuscular+= cantDeDias / 5}
	method aprenderUnaTecnica() {cantDeTecnicas+=1}
	
}
class Docente inherits Persona{
	var cantDeCursos =0
	override method inteligencia()= super() + (cantDeCursos * 2)
	override method esDestacado() = cantDeCursos > 3
	
}