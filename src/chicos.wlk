import elementos.*

object macaria {
	var ira = 10
	const disfraces = []
	var property caramelos = 0
		
	method disfrazar(unDisfraz){
		disfraces.add(unDisfraz)
	}
	
	method enojar(){
		ira++
	}
	
	method capacidadSusto(){
		const sustoTotal = disfraces.sum({disfraz => disfraz.susto()})
		return ira + sustoTotal
	}
	
	method disfraces(){
		return disfraces
	}
	
	method recibirCaramelos(cant){
		caramelos += cant - (cant/4)

	}
	
	method dejarDeUsarMenosEfectivo(){
		disfraces.sortBy { el1, el2 => el1.susto() < el2.susto() } 
		disfraces.remove(disfraces.get(0))
	}
}

object pancracio {
	var cantU = 2
	const disfraz = [mascaraDracula]
	var property caramelos = 0
	
	method dejarDisfraz(){
		cantU += 2
	}

	method disfrazar(unDisfraz){
		disfraz.clear()
		disfraz.add(unDisfraz)
	}

	method disfraces(){
		return disfraz
	}
	
	method capacidadSusto(){
		return cantU + disfraz.get(0).susto()
	}
	
	method recibirCaramelos(cant){
		caramelos += cant
	}
}

object pedro {
	const disfraz = [mascaraDracula]
	var property caramelos = 0

	method disfrazar(unDisfraz){
		disfraz.clear()
		disfraz.add(unDisfraz)
	}

	method disfraces(){
		return disfraz
	}
	
	method capacidadSusto(){
		return disfraz.get(0).susto()
	}
	
	method recibirCaramelos(cant){
		caramelos += 0
	}
}
