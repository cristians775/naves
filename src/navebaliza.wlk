import navesespaciales.*

class NaveBaliza inherits NaveEspacial {

	var color = "verde"

	constructor(_color, com) {
		color = _color
		combustible = com
	}

	method cambiarColorBaliza(_color) {
		color = _color
	}

	method color() {
		return color
	}

	override method prepararViaje() {
		color = "verde"
		self.ponerseParaleloAlSol()
		super()
	}

	override method avisar() {
		self.irHaciaElSol()
	}

	override method escapar() {
		self.cambiarColorBaliza("rojo")
	}

	override method estaTranquila() {
		return super() && color != "rojo"
	}

}

