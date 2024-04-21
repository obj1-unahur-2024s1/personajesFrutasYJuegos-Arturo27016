import personajes.*
import frutas.*

object futbol {
	var cantidad = 10
	
	method cambiarCantidad(nuevaCantidad){
		cantidad = nuevaCantidad
	}
	method energiaConsumida(minutos) = cantidad
}

object voley{
	method energiaConsumida(minutos) = 2 * minutos
}

object aerobic{
	method energiaConsumida(minutos) = (ciudad.temperatura() * 0.5) * (-1)
}

object basquet{
	method energiaConsumida(minutos) = (ciudad.temperatura() * 0.7) * (-1) - minutos * 3
}

object ciudad{
	var temperatura = 20
	method temperatura(nuevaTemperatura){temperatura = nuevaTemperatura}
	method temperatura() = temperatura
}