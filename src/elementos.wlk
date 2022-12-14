object trajeDeBruja {
	var property susto = 10
} 

object barba {
	var longitud = 2
	
	method perderPelo(){
		longitud--
	}
	
	method agregarPelo(){
		longitud++
	}
	
	method susto(){
		return 5*longitud
	}
	

}

object mascaraDracula{
			
	const tamanio = 2
	
	method susto(){
		return tamanio * 3
	}
	

}

object mascaraFrankenstein {
	const tamanio = 22
	
	method susto(){
		return tamanio
	}
	

}

object mascaraPolitico {
	var property promesaCampania = 12 
	
	method susto(){
		return promesaCampania
	}
	
}
