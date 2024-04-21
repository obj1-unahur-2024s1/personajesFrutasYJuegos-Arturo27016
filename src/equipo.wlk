import personajes.*
import frutas.*
import juegos.*

object equipo {
	var derecho = martin
	var izquierdo = arturo
	var tecnico = pepe
	
	method asignarEquipo(jugadorD, jugadorI, dt){
		derecho = jugadorD
		izquierdo = jugadorI
		tecnico = dt
	}	
	method rotacion(){
		var banco = derecho
		derecho = izquierdo
		izquierdo = banco
	}
	method nuevoDt(tec){
		if (tec.energiaQueTiene() > tecnico.energiaQueTiene()) tecnico = tec else tec.energiaQueTiene()
	}
	method promedioEnergia(){
		return (derecho.energiaQueTiene()+izquierdo.energiaQueTiene()+tecnico.energiaQueTiene()) /3
	}
	method todosFelices(){
		return (derecho.esFeliz()==true and izquierdo.esFeliz()==true and tecnico.esFeliz()==true)
	}
}

