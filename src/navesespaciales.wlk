class NaveEspacial {

	var velocidad = 0
	var direccion = 0
	var combustible = 0

	method acelerar(cuanto) {
		velocidad = cuanto
		velocidad = velocidad.min(100000)
	}

	method desacelerar(cuanto) {
		velocidad += cuanto
		velocidad = velocidad.max(0)
	}

	method irHaciaElSol() {
		direccion = 10
		direccion = direccion.min(10)
	}

	method escaparDelSol() {
		direccion = -10
		direccion = direccion.max(-10)
	}

	method ponerseParaleloAlSol() {
		direccion = 0
	}

	method acercarseUnPocoAlSol() {
		direccion += 1
		direccion = direccion.min(10)
	}

	method alejarseUnPocoDelSol() {
		direccion -= 1
		direccion = direccion.max(-10)
	}

	method prepararViaje() {
		self.cargarCombustible(3000)
		self.acelerar(5000)
	}

	method cargarCombustible(litros) {
		combustible += litros
	}

	method descargarCombustible(cant) {
		combustible -= cant
		combustible = combustible.max(0)
	}

	method recibirAmenaza() {
		self.escapar()
		self.avisar()
}
   method estaTranquila(){
   
   		
   		return combustible>=4000 && velocidad<12000
   		}
   	
   	
   }
