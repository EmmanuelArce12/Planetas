import habitantes.*
class Planeta {
	const personas= #{}
	var cantDeMuseos 
	var longitudDeMuralla 
	
	method construirMurallas(cantidad){return longitudDeMuralla+ cantidad}
	method agregarHabitantes(habitantes)= personas.addAll(habitantes)
	method delegacionDiplomatica() = personas.filter({x=>x.esDestacado()})
	method esCulto()= cantDeMuseos > 2 and personas.all({x=>x.inteligencia()>=10})
	method potenciaReal() = personas.sum({x=>x.potencia()}) // o se podría mapear la potencia de los habitantes de la lista y sumarlos? o usar el forEach?
	method fundarUnMuseo(){cantDeMuseos+=1}	
	method potenciaAparente()= self.habitanteMasPotente() * self.cantidadDeHabitantesDelPlaneta()
	method habitanteMasPotente()= self.potenciaDeLosHabitantes().max()
	method potenciaDeLosHabitantes()= personas.filter({x=>x.potencia()})
	method cantidadDeHabitantesDelPlaneta()= personas.size()
	method reforzarse() = self.potenciaAparente() >= (self.potenciaReal()*2)
	method recibirTributo()=personas.map({x=>x.ofrecerTributo(self)})	// es self, o x?, se puso self, 
	method habitantesValiosos()= personas.filter({x=>x.valor()>=40})	//porque se entiende como que "el paramatro que recibe es un planeta"
	method apaciguar(planeta1,planeta2)= self.habitantesValiososDelPlaneta(planeta1).map({x=>x.ofrecerTributo(planeta2)}) //se mapea, para realizar una accion sobre el planeta 2  ¿?
	method habitantesValiososDelPlaneta(planeta)= planeta.filter({x=>x.habitantesValiosos()})						//primero se filtra a los hab, valiosos del planeta 
	
	
}