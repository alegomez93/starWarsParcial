import planeta.*
import armas.*


class Persona 
{
	const property edad
	
	method inteligencia()
	{
		var anios = 8
		
		if (edad.between(20, 40)) {anios = 12}
		
		return anios
	}
	
	method esDestacada()
	{
		return (edad == 25 or edad == 35)
	}
	
	method potencia()
	{
		return 20
	}
	
	method enviarTributo(unPlaneta){}
	
	method valor()
	{
		return self.potencia() + self.inteligencia()
	}
}


class Atleta inherits Persona
{
	var property masaMuscular = 4
	var property cantDeTecnicas = 2
	
	override method potencia()
	{
		return super() + (masaMuscular * cantDeTecnicas)
	}
	
	override method esDestacada()
	{
		return super() or (cantDeTecnicas > 5)
	}
	
	method entrenar(cantDedias)
	{
		masaMuscular += (cantDedias / 5).truncate(0)
	}
	
	method aprenderUnaTecnica()
	{
		cantDeTecnicas += 1
	}
	
	override method enviarTributo(unPlaneta)
	{
		unPlaneta.construirMurallas(2)
	}
	

}


class Docente inherits Persona
{
	var property cantCursos = 0
	
	override method inteligencia()
	{
		return super() + (cantCursos * 2)
	}
	
	override method esDestacada()
	{
		return cantCursos > 3
	}
	
	override method enviarTributo(unPlaneta)
	{
		unPlaneta.fundarUnMuseo()
	}
	
	override method valor()
	{
		return super() + 5
	}
	
}


class Soldado inherits Persona
{
	const property coleccionDeArmas = []
	
	override method potencia()
	{
		return super() + coleccionDeArmas.sum{ a => a.potencia(self)}
	}
	
	override method enviarTributo(unPlaneta)
	{
		unPlaneta.construirMurallas(5)
	}
}







