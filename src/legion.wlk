import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var property integrantes = []

	method agregarIntegrante(chicoNuevo){
		integrantes.add(chicoNuevo)
	}
	
	method caramelos(){
		return integrantes.sum({chico => chico.caramelos()})
	}
	
	method agregarIntegrantes(chicosNuevos){
		integrantes.addAll(chicosNuevos)
	}
	
	method capacidadSusto(){
		return integrantes.sum({chico => chico.capacidadSusto()})
	}
	
	method lider(){
		return integrantes.max({ chico => chico.capacidadSusto() })
	}
	
	method recibirCaramelos(cant){
		self.lider().recibirCaramelos(cant)
	}
	
	method todosLosDisfraces()=integrantes.flatMap({ integrante => integrante.disfraces() })
	
	method disfracesRepetidos(){

		const disfrazXChico = []
		integrantes.forEach({chico => disfrazXChico.addAll(chico.disfraces().asSet())})
		const repetidos = disfrazXChico.filter({disfraz => disfrazXChico.occurrencesOf(disfraz) > 1 })		
		return repetidos.asSet()

	}
	
	method normaSinRepetidos(){
		const repe = self.disfracesRepetidos()
        integrantes.forEach {chico => chico.disfraces().removeAllSuchThat({disfraz => repe.contains(disfraz)})} 
	}
	
}

object barrio{
	const chicos = []
	method chicos(unChico){
		chicos.addAll( unChico )
	}
	
	method chicos(){
		return chicos
	}
	
	method algunoMuyAsustador(){
		return chicos.any({unChico => unChico.capacidadSusto() > 42})
	}
	
	method chicosConMasCaramelos(cant){
		const chicosCaramelos = chicos.sortedBy({ unChico, otroChico => unChico.caramelos() > otroChico.caramelos()})
		return chicosCaramelos.take(cant)
	}
	
}


