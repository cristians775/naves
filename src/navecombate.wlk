import navesespaciales.*

class NaveCombate inherits NaveEspacial {

	var invisible
	var misilesDesplegados=false
	var mensaje = []

	method ponerseVisible() {
		invisible = false
	}

	method ponerseInvisible() {
		invisible = true
	}

	method estaInvisible() {
		return invisible
	}

	method desplegarMisiles() {
		misilesDesplegados = true
	}

	method replegarMisiles() {
		misilesDesplegados = false
	}

	method misilesDesplegados() {
		return misilesDesplegados
	}

	method emitirMensaje(_mensaje) {
		mensaje.add(_mensaje)
	}

	method mensajesEmitidos() {
		return mensaje
	}

	method primerMensajeEmitido() {
		return mensaje.first()
	}

	method ultimoMensajeEmitido() {
		return mensaje.last()
	}

	method esEscueta() {
		return !mensaje.any({ msj => msj.length() > 30})
	}

	method emitioMensaje(_mensaje) {
		return mensaje.any({ msj => msj.contains(_mensaje) })
	}

	override method prepararViaje() {
		self.replegarMisiles()
		self.acelerar(15000)
		self.emitirMensaje("Saliendo en misión")
		super()
		self.acelerar(15000)
	}

	override method escapar() {
		self.acercarseUnPocoAlSol()
		self.acercarseUnPocoAlSol()
	}

	override method avisar() {
		self.emitirMensaje("Amenaza recibida")
	}
	
	override method estaTranquila(){
		
		return super() && !self.misilesDesplegados()
		
	}

}