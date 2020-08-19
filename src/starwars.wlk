/** First Wollok example */
object leia {

}

object anakin {
	
	var lado = ladoLuminoso
	var midi = 1000
	
	method corromperse(){
		lado = ladoOscuro
	}
	
	method poder() {
		return 10*midi + lado.poderAdicional()
	}
	
	method entrenar(tiempo) {
		lado.entrenamiento(self,tiempo)
	}
	method aumentarMidi(cant){
		midi += cant
	}
	
}

object ladoOscuro {
	method poderAdicional(){
		return 500
	}
	method entrenamiento(alguien,tiempo){
		alguien.aumentarMidi(tiempo*1000)
	}
	
}


object ladoLuminoso {
	var cantidadJedisVivos = 4
	method poderAdicional(){
		return cantidadJedisVivos * 100
		
	}
	method seMuereUnJedi(){
		cantidadJedisVivos -= 1
	}
	method entrenamiento(alguien,tiempo) {
		alguien.aumentarMidi(tiempo)
		alguien.corromperse()
	}
	
}


object monstruo {
	var entrenado = false
	
	method aumentarMidi(cant) {
		entrenado = cant > 4000
	}
	method estaEntrenado() {return entrenado}
	
	
}