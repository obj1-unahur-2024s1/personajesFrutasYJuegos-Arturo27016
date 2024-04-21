import juegos.*
import personajes.*

object vaso {
	method energiaQueAporta(){
		return 0
	}
	method cambioDeDia(){
	}
}

object manzana {
	var color = verde
	
	method energiaQueAporta(){
		return color.energia()
	}
	method cambioDeDia(){
		color = rojo
	}	
}

object mandarina {
	var gramos = 60
	
	method energiaQueAporta() = 2*(gramos/10)
	
	method cambioDeDia(){
		gramos = gramos * (0.9)
	}
}

object banana{
	method energiaQueAporta() = amarillo.energia()
	
	method cambioDeDia(){
	}
}

object verde {
	method energia(){
		return 7
	}
}

object rojo{
	method energia(){
		return 14
	}
}

object amarillo{
	method energia(){
		return 5
	}
}
