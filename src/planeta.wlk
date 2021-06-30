import habitantes.*

class Planeta 
{
	const property listPersonas = #{}
	var property cantMuseos = 0
	var property longitudMurallas = 0
	
	method agregarPersonas(unaPersona)
	{
		listPersonas.add(unaPersona)
	}
	
	method quitarPersonas(unaPersona)
	{
		listPersonas.remove(unaPersona)
	}
	
	method delegacionDiplomatica()
	{
		return listPersonas.filter{ p => p.esDestacada() }
	}
	
	method valorInicialDeDefensa()
	{
		return listPersonas.count{ p => p.potencia() >= 30 }
	}
	
	method esCulto()
	{
		return (cantMuseos >= 2) and (listPersonas.all{ p => p.inteligencia() >= 10})
	}
	
	method potenciaReal()
	{
		return listPersonas.sum{ p => p.potencia()}
	}
	
	method construirMurallas(cantKm)
	{
		longitudMurallas += cantKm
	}
	
	method fundarUnMuseo()
	{
		cantMuseos += 1
	}
	
	method potenciaAparente()
	{
		return listPersonas.map({ p => p.potencia()}).max() * listPersonas.size()
	}
	
	method necesitaReforzarse()
	{
		return (self.potenciaAparente() * 2) >= self.potenciaReal()
	}
	
	method recibirTributos()
	{
		listPersonas.forEach( {p => p.enviarTributo(self)} )
	}
	
	method habitantesValiosos()
	{
		return listPersonas.filter{ p => p.valor() >= 40}
	}
	
	method apaciguarA(otroPlaneta)
	{
		self.habitantesValiosos().forEach( {p => p.enviarTributo(otroPlaneta)} )
	}
	
}