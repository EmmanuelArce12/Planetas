import habitantes.*
class Planeta {
	const personas= #{}
	var cantDeMuseos 
	var longitudDeMuralla 
	var cantidad
	
	method construirMurallas(){return longitudDeMuralla+ cantidad}
	method agregarHabitantes(habitantes)= personas.addAll(habitantes)
	method delegacionDiplomatica() = personas.filter({x=>x.esDestacado()})
	method esCulto()= cantDeMuseos > 2 and personas.all({x=>x.inteligencia()>=10})
	method potenciaReal() = personas.sum({x=>x.potencia()}) // o se podría mapear la potencia de los habitantes de la lista y sumarlos?
	method fundarUnMuseo(){cantDeMuseos+=1}	
 }