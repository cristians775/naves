import navesespaciales.*

class NaveBaliza inherits NaveEspacial {

	var color = "verde"

	method cambiarColorBaliza(_color) {
		color = _color
	}

	override method prepararViaje() {
		color = "verde"
		self.ponerseParaleloAlSol()
		super()
	}

	override method recibirAmenaza() {
		self.irHaciaElSol()
		self.cambiarColorBaliza("rojo")
	}
	override method estaTranquila(){
		
		
		
		return super() && color!="rojo"
	
		
	}

}