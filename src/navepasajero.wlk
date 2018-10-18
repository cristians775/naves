import navesespaciales.*

class NavePasajero inherits NaveEspacial {

	var property pasajero=0
	var comida=0
	var bebida=0

	method cargarComida(raciones) {
		comida += raciones
	}

	method descargarComida(raciones) {
		comida -= raciones
		comida = comida.max(0)
	}

	method cargarBebida(cant) {
		bebida += cant
	}

	method descargarBebida(cant) {
		bebida -= cant
		bebida = bebida.max(0)
	}

	override method prepararViaje() {
		self.cargarComida(4 * pasajero)
		self.cargarBebida(6 * pasajero)
		self.acercarseUnPocoAlSol()
		super()
	}

	override method escapar() {
		velocidad = velocidad * 2
	}

	override method avisar() {
		comida -= pasajero
		bebida -= (pasajero * 2)
	}
	
	

}
