import habitantes.*


class Pistolete
{
	var property largo = 0
	
	method potencia(soldado)
	{
		var pot = largo * 2
		
		if (soldado.edad() > 30)
			pot = largo * 3
		
		return pot
	}
	
}
	
class Espadon
{
	var property peso = 0
	
	method potencia(soldado)
	{
		var pot = 6
		
		if (soldado.edad() < 40)
			pot = peso / 2
		
		return pot
	}
}	
