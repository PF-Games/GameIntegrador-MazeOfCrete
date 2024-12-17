import wollok.game.*
import juego.*
import elementos.*

class Pantalla inherits Items (position = game.origin()){
	
	
 	override method image() = image
 	
 	override method position() = position
 	
 	method addVisual(){
		if(!game.hasVisual(self)) {
			game.addVisual(self)
		}
	}
	method removeVisual(){
		if(game.hasVisual(self)) {
			game.removeVisual(self)		
		}
	}
 	
 	method ocultaryLuegoEjecutar(accion) {
 		self.removeVisual()
		accion.apply()
 	}

 	method mostrarPorMilisegundosYLuegoEjecutar(timeout, accion) {
 		self.addVisual()
 		
	  	game.schedule(timeout,{
			self.removeVisual()
			accion.apply()
	  	})
 	}
}

object pantallas inherits Pantalla (image = ""){
	
	const property titulo = new Pantalla(image = "./assets/pantallas/titulo.png")

	const property controles = new Pantalla(image = "./assets/pantallas/controles.png")

	const property reglas = new Pantalla(image = "./assets/pantallas/reglas.png")

	const property gameOver = new Pantalla(image ="./assets/pantallas/gameOver.png")

	const property winScreen = new Pantalla(image = "./assets/pantallas/winScreen.png")

	const property creditos = new Pantalla(image = "./assets/pantallas/creditos.png")

	const property inventario = new Pantalla(image = "./assets/pantallas/inventarioFinal.png",
										position = game.at(game.width()-6,0))
}


						
						






