
import juegos.*
import frutas.*



object martin {
	var energia = 100
	var actividades = 0
	var hambre = false
	var despensa = vaso
	
	method esFeliz(){
		return (energia > 80 or actividades >= 2 and hambre == false)
	}
	method comprar(fruta){despensa = fruta}
	
	method comer(){
		energia = energia + despensa.energiaQueAporta()
		hambre = false
		despensa = vaso
	}
	method deporte(unDeporte, tiempo){
		energia = 0.max(energia - unDeporte.energiaConsumida(tiempo))
		hambre = true
		actividades = actividades + 1
	}
	method dormir(){
		energia = energia * 1.5
		despensa.cambioDeDia()
	}
	method energiaQueTiene(){
		return energia
	}
}

object maria{
	var endorfina = 100
	var amuleto = rojo
	
	method energiaQueTiene(){
		return (endorfina * 2 + amuleto.energia())
	}
	method esFeliz(){
		return (endorfina > amuleto.energia())
	}
}

object pepe{
	var energia = 77
	
	method esFeliz(){
		return true
	}
	method energiaQueTiene(){
		return energia
	}
}

object arturo{
	var humor = 100
	var motivacion = rojo
	
	method energiaQueTiene(){
		return humor / motivacion.energia()
	}
	method esFeliz(){
		return (self.energiaQueTiene() > martin.energiaQueTiene())
	}
}