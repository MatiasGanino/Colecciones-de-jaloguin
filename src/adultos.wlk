import chicos.*
import legion.*
import elementos.*

object mirca {
	var property tolerancia = 22
	
	method serAsustadoPor(chico){
		chico.recibirCaramelos((chico.capacidadSusto() - tolerancia).max(0))
		tolerancia -=1
	}
	
	method caramelosAEntregar(ninio){
		return ninio.caramelos()
	}
}