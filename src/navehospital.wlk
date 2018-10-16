import navepasajero.*

class NaveHospital inherits NavePasajero {

	var quirofano = false

	method prepararQuirofanos() {
		quirofano = true
	}

   method estanPreparados(){
   	
   	return quirofano
   }
	override method recibirAmenaza() {
		
	
		self.escapar()
		self.avisar()
	    self.prepararQuirofanos()
	}
  override method estaTranquila(){
  	
  	return super() && !self.estanPreparados()
  }
}

