import navesespaciales.*

class NavePasajero inherits NaveEspacial {

	var property pasajero = 0
	var comida = 0
	var bebida = 0

	constructor(pasajeros, com) {
		pasajero = pasajeros
		combustible = com
	}

	method cantidadPasajeros() {
		return pasajero
	}

	method cargarComida(raciones) {
		comida += raciones
	}

	method bebidas() {
		return bebida
	}

	method racionesDeComida() {
		return comida
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
		super()
		self.cargarComida(4 * pasajero)
		self.cargarBebida(6 * pasajero)
		self.acercarseUnPocoAlSol()
	}

	override method recibirAmenaza() {
		super()
		self.desacelerar(200)
	}

	override method escapar() {
		self.acelerar(velocidad)
	}

	override method avisar() {
		self.descargarComida(pasajero)
		self.descargarBebida(2 * pasajero)
	}

}

