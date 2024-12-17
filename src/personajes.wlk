
import wollok.game.*
import juego.*
import pantalla.*
import elementos.*
import laberintos.*


object player {
	const property inventarioPlayer = []
	var property position = game.at(0,1)
	var property salud = 0.max(8)
	var property ultimoMovimiento = izquierda
	var property invencible = false
	var property estaEnvenenado = false
	var property estaMuriendo = false
	
	method image() {
		return animacionPlayer.image()	
	}
	
	method envenenar() {
		if (not estaEnvenenado) {
			estaEnvenenado = true
			game.onTick(10000, "veneno", {self.perderSalud(1)})
		}
	}
	
	method curarVeneno() {
		if (estaEnvenenado) {
			game.removeTickEvent("veneno")
			estaEnvenenado = false
		}
	}
	
	method agregarAlInventario(cosa){
		inventarioPlayer.add(cosa)
	}
	
	method quitarDelInventario(cosa){
		inventarioPlayer.remove(cosa)
	}
	
	method tieneLlave() =
		inventarioPlayer.contains(llave)

	method perderSalud(valor) {
		salud = salud - valor
		if (salud <= 0) {
			self.perderVida()
			salud = 8
		}
	}
	
	method perderVida(){
		if (vida.vidasActuales() >= 1 and !estaMuriendo and !invencible){
			self.comprarVida()
			vida.perderVida()
			self.curarVeneno()
			estaMuriendo = true
			animacionPlayer.animacionMuerte()
			game.schedule(5000, {self.resetPosition(); 	animacionPlayer.direccion(izquierda);
								 animacionPlayer.fotograma(0); estaMuriendo = false;
								 salud = 8
			})
		}
		
		if (vida.vidasActuales() <= 0 and !invencible) {
			 game.addVisual(pantallas.gameOver())
			 juego.finalizar()
		}
	}
	method comprarVida() {
		const vidaCosto = if (juego.dificultadExtrema()) 1000 else 500
		if (score.puntaje() >= vidaCosto and vida.vidasActuales() < 5) {
			vida.ganarVida()
			score.perderPuntos(vidaCosto)
		}
	}
	
	method resetPosition(){
		position = game.at(0,1)
	}
	
	method chocarCon(cosa){}
	
//	method checkVidas() {
//		if (score.puntaje() == 0) {
//	      self.perderVida()
//	    }
//	}
	
	method regresar() {
		ultimoMovimiento.regresar(self)
	}
	
	// A continuacion, los movimientos solo pueden ser ejecutados cuando el personaje
	// 	no esta muriendo, el else es para que no se pueda mover durante la animacion de morir
	
	method bajar() {
		if (!self.estaMuriendo()) {
			ultimoMovimiento = abajo
			animacionPlayer.direccion(abajo)
			animacionPlayer.siguienteFotograma()
		} else {
			position = position.up(1)
		}
	}
	
	method subir() {
		if (!self.estaMuriendo()) {
			ultimoMovimiento = arriba
			animacionPlayer.direccion(arriba)
			animacionPlayer.siguienteFotograma()
		} else {
			position = position.down(1)
		}
	}
	
	method izquierda() {
		if (!self.estaMuriendo()) {
			ultimoMovimiento = izquierda
			animacionPlayer.direccion(izquierda)
			animacionPlayer.siguienteFotograma()
		} else {
			position = position.right(1)
		}
	}
	
	method derecha() {
		if (!self.estaMuriendo()) {
			ultimoMovimiento = derecha
			animacionPlayer.direccion(derecha)
			animacionPlayer.siguienteFotograma()
		} else {
			position = position.left(1)
		}
	}
}

class Animaciones {
	
	var property fotograma = 0
	
	method siguienteFotograma() {
		fotograma = (fotograma + 1) % 3
	}
}

object animacionPlayer inherits Animaciones{
	
	var property direccion = izquierda
	
	method image() {
		return "./assets/jugador/" + direccion.puntoCardenal() + "-" + fotograma.toString() + ".png"
	}
	
	method animacionMuerte() {
		direccion = muerte
		fotograma = 0
		game.onTick(300, "animacionMuerte", {self.siguienteFotogramaMuerte()})
		game.schedule(1200, {game.removeTickEvent("animacionMuerte")})
	}
	
	method siguienteFotogramaMuerte() {
		fotograma = 4.min(fotograma + 1)
	}
}

class Minotaur {
	var property posInicial
	var property position = posInicial
	var property posicionAnterior = position
	var property direccion = derecha
	var property fotograma = 0
	
	method image() {
		return "./assets/minotauro/minotauro" + direccion.direccion() + fotograma.toString() + ".png"
	}
	method regresar(){
		position = posicionAnterior
	}
	
	method resetPosition() {position = posInicial}
	
	method siguienteFotograma() {
		fotograma = (fotograma + 1) % 8
	}
	
	method acercarseAPlayer() {
		const otraPosicion = player.position()
		const  newX = position.x() + if (otraPosicion.x() > position.x()) 1 else -1
		if (otraPosicion.x() > position.x()) {
			direccion = derecha
		} else {
			direccion = izquierda
		}
		self.siguienteFotograma()
		posicionAnterior = position
		position = game.at(newX,position.y())
	}
	
	method chocarCon(cosa){
		if (cosa.equals(player) and player.invencible()) {
			self.resetPosition()
			player.invencible(false)
		}
		else if (cosa.equals(player) and !player.invencible()) {
			player.perderVida()
			game.schedule(5000, {self.resetPosition()})
		}
	}
	
	method petrificarse() {
		game.removeTickEvent("movimiento")
		game.schedule(7000, { 
			juego.enemigos().forEach({enemigo =>
				game.onTick(1.randomUpTo(2) * 400 ,"movimiento",{
					enemigo.acercarseAPlayer()
				})
			})
		})
	}
}

object ubicacionMinotauro {
	
	method decidirUbicacion1X() {
		var x = 0
		
		if (laberinto.numero() == 1) {
			x = 50
		} else if (laberinto.numero() == 2) {
			x = 28
		} else if (laberinto.numero() == 3) {
			x = 26
		} else if (laberinto.numero() == 4) {
			x = 40
		} else {
			x = 31
		}
		return x
	}
	
	method decidirUbicacion2X() {
		var x = 0
		
		if (laberinto.numero() == 1) {
			x = 47
		} else if (laberinto.numero() == 2) {
			x = 28
		} else if (laberinto.numero() == 3) {
			x = 26
		} else if (laberinto.numero() == 4) {
			x = 40
		} else {
			x = 37
		}
		return x
	}
	
	method decidirUbicacion1Y() {
		var y = 0
		
		if (laberinto.numero() == 1) {
			y = 22
		} else if (laberinto.numero() == 2) {
			y = 16
		} else if (laberinto.numero() == 3) {
			y = 13
		} else if (laberinto.numero() == 4) {
			y = 1
		} else {
			y = 10
		}
		return y
	}
	
	method decidirUbicacion2Y() {
		var y = 0
		
		if (laberinto.numero() == 1) {
			y = 7
		} else if (laberinto.numero() == 2) {
			y = 28
		} else if (laberinto.numero() == 3) {
			y = 22
		} else if (laberinto.numero() == 4) {
			y = 7
		} else {
			y = 16
		}
		return y
	}
	
}

object arriba {
	method regresar(algo) = algo.position(algo.position().down(1))
	method direccion() = "Arriba"
	method puntoCardenal() = "norte"
}
object abajo {
	method regresar(algo) = algo.position(algo.position().up(1))
	method direccion() = "Abajo"
	method puntoCardenal() = "sur"
}
object derecha {
	method regresar(algo) = algo.position(algo.position().left(1))
	method direccion() = "Derecha"
	method puntoCardenal() = "este"
}
object izquierda {
	method regresar(algo) = algo.position(algo.position().right(1))
	method direccion() = "Izquierda"
	method puntoCardenal() = "oeste"
}
object muerte {
	method direccion() = "Muerte"
	method puntoCardenal() = "muerte"
}









