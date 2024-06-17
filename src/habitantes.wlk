class Persona{
	const edad
	
	method potencia()= 20
	method inteligencia()= if(edad>=20 and edad<=40) 12 else 8
	method esDestacado() = edad==25 or edad == 35
	method ofrecerTributo(planeta){}
	method valor() = self.potencia() + self.inteligencia() 
	 
	
}
class Atleta inherits Persona{
	var masaMuscular = 4
	var cantDeTecnicas= 2
	override method potencia()= super() + (masaMuscular*cantDeTecnicas)
	override method esDestacado()= super() or cantDeTecnicas>5
	method entrenar(cantDeDias) {masaMuscular+= cantDeDias / 5}
	method aprenderUnaTecnica() {cantDeTecnicas+=1}
	override method ofrecerTributo(planeta){planeta.construirMurallas(2)}
	
}
class Docente inherits Persona{
	const cantDeCursos =0
	override method inteligencia()= super() + (cantDeCursos * 2)
	override method esDestacado() = cantDeCursos > 3
	override method ofrecerTributo(planeta){planeta.fundarUnMuseo()}
	override method valor() = super()+ 5
	
}
class Soldado inherits Persona{
	const armas =#{}
	method edad()= edad
	method agregarArma(arma)= armas.add(arma)
	override method potencia()= super() + armas.potencia(self) // self porque es el soldado..
	override method ofrecerTributo(planeta){planeta.construirMurallas(5)}
}
object pistolete{
	
	var largo  
	method potencia(soldado) = if (soldado.edad()>= 30) largo *3 else largo *2
	
}
object espadon{
	var peso
	method potencia(soldado)= if(soldado.edad()>40) peso /2 else 6
}
