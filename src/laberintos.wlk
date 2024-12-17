import wollok.game.*
import juego.*
import pantalla.*
import personajes.*
import elementos.*

object laberinto {
	const property ubicacionesMedusa = [game.at(12,16), game.at(45,19), game.at(38,16), game.at(30,16), game.at(30,13)]
	const property ubicacionesLlave = [game.at(51,7), game.at(0,27), game.at(15,25), game.at(57,7), game.at(52,28)]
	const property ubicacionesCofre = [game.at(0,27), game.at(52,28), game.at(57,7), game.at(19,22), game.at(4,1)]
	const property ubicacionesCaliz = [game.at(15,27), game.at(31,10), game.at(4,25), game.at(43,19), game.at(51,4)]
	const property ubicacionesManzana = [game.at(30,27), game.at(13,19), game.at(28,28), game.at(31,13), game.at(46,10)]
	var property numero
	
	method decidirTablero() {
		
		const numeroTablero = (1..5).anyOne()
		
		game.addVisual( new Pantalla(image = "./assets/maze/tableroJuegoFinal"+ numeroTablero.toString() + ".png") )
		numero = numeroTablero
		self.spawnearElementos()
	}
	
	method spawnearElementos() {
		if(numero == 1) {
			self.spawnearElementos1()
		}
		if(numero == 2) {
			self.spawnearElementos2()
		}
		if(numero == 3) {
			self.spawnearElementos3()
		}
		if(numero == 4) {
			self.spawnearElementos4()
		}
		if(numero == 5) {
			self.spawnearElementos5()
		}
	}
	
	
		
	
	method spawnearElementos1() {
		const n = "nada" 		//Las n serian en donde estan los muros de la imagen, pero en el codigo, los muros estarian alrededor de los de la image
		
		self.dibujarLineaDeElementos(29, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
		self.dibujarLineaDeElementos(28, [0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(27, [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(26, [0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(25, [0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(24, [3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,1,4,1,1])
		self.dibujarLineaDeElementos(23, [0,1,1,n,n,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(22, [0,1,1,n,n,1,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,1,1])
		self.dibujarLineaDeElementos(21, [0,1,1,n,n,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,0,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1])
		self.dibujarLineaDeElementos(20, [0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,0,1,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(19, [0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(18, [3,1,1,n,n,1,0,1,1,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,1,1,1,1,1,1,1,1,1,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(17, [0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1])
		self.dibujarLineaDeElementos(16, [0,1,1,n,n,1,0,1,1,n,n,1,0,0,0,4,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,2,0,0,0,1,1])
		self.dibujarLineaDeElementos(15, [4,1,1,n,n,1,3,1,1,n,n,1,0,1,1,1,1,1,0,1,1,0,1,1,1,1,1,0,1,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,0,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(14, [0,1,1,1,1,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,0,1,1,n,n,1,0,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(13, [0,0,0,2,0,0,0,1,1,n,n,1,0,1,1,n,n,1,0,0,0,0,1,1,n,n,1,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(12, [1,1,1,1,1,1,0,1,1,n,n,1,0,1,1,n,n,1,1,1,1,0,1,1,n,n,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(11, [n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(10, [n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(09, [n,n,n,n,n,1,3,1,1,n,n,1,3,1,1,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(08, [1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(07, [0,0,0,0,0,0,4,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,4,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(06, [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,0,1,1,0,1,1,1,1,1,n,n,1,3,1,1])
		self.dibujarLineaDeElementos(05, [0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,0,1,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(04, [0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,0,0,0,0,0,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(03, [3,1,1,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,1,0,1,1,0,1,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(02, [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,0,1,1,0,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(01, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(00, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
	}
	
	method spawnearElementos2() {
		const n = "nada" 		//Las n serian en donde estan los muros de la imagen, pero en el codigo, los muros estarian alrededor de los de la image
		
		self.dibujarLineaDeElementos(29, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
		self.dibujarLineaDeElementos(28, [0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
		self.dibujarLineaDeElementos(27, [0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(26, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(25, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(24, [4,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(23, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(22, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(21, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,3,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,3,1,1,n,n,n,n,n,n,n,n,1,3,1,1])
		self.dibujarLineaDeElementos(20, [0,1,1,n,n,1,0,1,1,n,n,1,1,1,1,0,1,1,1,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(19, [0,1,1,n,n,1,0,1,1,n,n,1,0,0,0,4,0,0,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,0,0,0,0,0,2,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(18, [3,1,1,n,n,1,3,1,1,n,n,1,0,1,1,1,1,1,0,1,1,n,n,1,3,1,1,n,n,1,3,1,1,n,n,n,n,n,1,3,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(17, [0,1,1,1,1,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(16, [4,0,0,2,0,0,0,1,1,n,n,1,0,1,1,n,n,1,0,0,0,0,0,0,4,0,0,2,0,0,4,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(15, [1,1,1,1,1,1,0,1,1,n,n,1,3,1,1,n,n,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,3,1,1])
		self.dibujarLineaDeElementos(14, [n,n,n,n,n,1,0,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(13, [n,n,n,n,n,1,0,0,0,0,0,0,4,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,4,1,1])
		self.dibujarLineaDeElementos(12, [n,n,n,n,n,1,3,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(11, [1,1,1,1,1,1,0,1,1,n,n,1,0,1,1,1,1,1,1,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(10, [0,0,0,2,0,0,4,1,1,n,n,1,0,0,0,0,0,0,0,1,1,n,n,1,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,4,0,0,0,0,0,2,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(09, [0,1,1,1,1,1,0,1,1,n,n,1,0,1,1,1,1,1,0,1,1,n,n,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(08, [0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(07, [0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(06, [3,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,3,1,1,n,n,1,0,1,1,n,n,1,3,1,1,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1])
		self.dibujarLineaDeElementos(05, [0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(04, [4,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,4,1,1,n,n,1,0,1,1,n,n,1,4,1,1,n,n,n,n,n,n,n,n,1,4,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(03, [0,1,1,n,n,1,3,1,1,n,n,1,3,1,1,n,n,1,0,1,1,n,n,1,3,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(02, [0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(01, [0,0,0,0,0,0,4,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(00, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
	}
	
	method spawnearElementos3() {
		const n = "nada" 		//Las n serian en donde estan los muros de la imagen, pero en el codigo, los muros estarian alrededor de los de la image
		
		self.dibujarLineaDeElementos(29, [n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(28, [n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(27, [n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(26, [n,n,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,n,n,n])
		self.dibujarLineaDeElementos(25, [n,n,1,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,4,0,0,0,0,0,2,0,0,0,0,0,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(24, [n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(23, [n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(22, [n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(21, [n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n])
		self.dibujarLineaDeElementos(20, [n,n,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(19, [n,n,1,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,4,1,1,n,n,n])
		self.dibujarLineaDeElementos(18, [n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(17, [n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1])
		self.dibujarLineaDeElementos(16, [n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,4,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,4,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(15, [n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(14, [1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(13, [0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(12, [0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,3,1,1])
		self.dibujarLineaDeElementos(11, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(10, [3,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,4,1,1])
		self.dibujarLineaDeElementos(09, [0,1,1,n,n,1,3,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,1,3,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(08, [0,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,n,n,n,n,n,n,n,n,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(07, [0,1,1,n,n,1,4,0,0,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,1,1,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,2,0,0,4,0,0,0,0,0,4,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(06, [3,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,3,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(05, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(04, [4,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,2,0,0,0,0,0,4,1,1,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(03, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,3,1,1])
		self.dibujarLineaDeElementos(02, [0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(01, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,4,1,1,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,4,1,0])
		self.dibujarLineaDeElementos(00, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,n,n,n,n,n,n,n,n,n,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
	}
	
	method spawnearElementos4() {
		const n = "nada" 		//Las n serian en donde estan los muros de la imagen, pero en el codigo, los muros estarian alrededor de los de la image
		
		self.dibujarLineaDeElementos(29, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,n,n,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
		self.dibujarLineaDeElementos(28, [0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,n,n,1,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(27, [0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,3,1,1,n,n,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(26, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(25, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,4,0,0,0,0,0,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(24, [0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,1,0,1,1,1,1,1,0,1,1,n,n,n,n,n,1,3,1,1,n,n,1,3,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(23, [0,1,1,n,n,1,0,1,1,n,n,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(22, [0,1,1,n,n,1,0,1,1,n,n,1,0,0,0,0,0,0,2,0,0,4,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,4,1,1,n,n,1,4,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(21, [0,1,1,n,n,1,3,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,n,n,1,3,1,1,n,n,1,3,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(20, [0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,0,1,1,1,1,1,n,n,1,0,1,1,1,1,1,0,1,1,n,n,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(19, [0,0,0,2,0,0,4,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,4,0,0,0,0,0,4,0,0,0,1,1,n,n,1,0,0,0,2,0,0,0,1,1,n,n,1,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(18, [0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,1,1,1,0,1,1,1,1,1,0,1,1,n,n,1,0,1,1,1,1,1,0,1,1,n,n,1,3,1,1,1,1,1])
		self.dibujarLineaDeElementos(17, [0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(16, [0,1,1,n,n,1,0,1,1,n,n,1,0,0,0,0,0,0,0,0,0,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,4,1,1,n,n,n])
		self.dibujarLineaDeElementos(15, [3,1,1,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,3,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(14, [0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(13, [4,0,0,0,0,0,0,0,0,2,0,0,0,1,1,n,n,n,n,n,1,0,0,0,0,0,0,2,0,0,0,0,0,3,0,0,4,1,1,n,n,1,3,1,1,n,n,1,0,0,0,2,0,0,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(12, [0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(11, [0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,4,1,1,n,n,n,n,n,1,4,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(10, [0,1,1,n,n,n,n,n,n,n,n,1,0,0,0,0,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(09, [0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n])
		self.dibujarLineaDeElementos(08, [0,1,1,n,n,n,n,n,1,1,1,1,0,1,1,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,n,n,1,0,1,1,1,1,1])
		self.dibujarLineaDeElementos(07, [0,1,1,n,n,n,n,n,1,0,0,0,0,1,1,n,n,n,n,n,1,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,2,0,0,0,0,0,2,0,0,0,1,1,n,n,1,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(06, [0,1,1,n,n,n,n,n,1,3,1,1,1,1,1,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(05, [0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(04, [0,1,1,n,n,n,n,n,1,4,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(03, [3,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(02, [0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(01, [4,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,2,0,0,0,0,0,4,0,0,0,0,0,2,0,0,0,1,1])
		self.dibujarLineaDeElementos(00, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
	}
	
	method spawnearElementos5() {
		const n = "nada" 		//Las n serian en donde estan los muros de la imagen, pero en el codigo, los muros estarian alrededor de los de la image
		
		self.dibujarLineaDeElementos(29, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
		self.dibujarLineaDeElementos(28, [0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(27, [0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(26, [0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(25, [0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(24, [0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(23, [0,1,1,1,1,1,n,n,1,0,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,n,n,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(22, [0,0,0,0,1,1,n,n,1,0,1,1,n,n,1,0,0,0,0,0,0,2,0,0,0,1,1,n,n,1,0,0,0,4,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(21, [1,1,1,0,1,1,n,n,1,3,1,1,n,n,1,1,1,1,0,1,1,1,1,1,3,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,n,n,1,3,1,1])
		self.dibujarLineaDeElementos(20, [n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,n,n,1,0,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(19, [n,n,1,0,1,1,n,n,1,4,1,1,n,n,n,n,n,1,0,1,1,n,n,1,4,1,1,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,4,1,1])
		self.dibujarLineaDeElementos(18, [n,n,1,3,1,1,n,n,1,0,1,1,n,n,n,n,n,1,3,1,1,n,n,1,0,1,1,n,n,1,3,1,1,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(17, [1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(16, [0,0,0,4,0,0,0,0,0,0,0,0,2,0,0,0,0,0,4,0,0,0,0,0,2,0,0,0,0,0,4,0,0,2,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,1,1])
		self.dibujarLineaDeElementos(15, [0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
		self.dibujarLineaDeElementos(14, [0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(13, [0,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(12, [3,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,n])
		self.dibujarLineaDeElementos(11, [0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
		self.dibujarLineaDeElementos(10, [4,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,1,1])
		self.dibujarLineaDeElementos(09, [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,3,1,1])
		self.dibujarLineaDeElementos(08, [0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(07, [0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,n,n,n,n,n,n,n,n,1,4,1,1])
		self.dibujarLineaDeElementos(06, [0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,n,n,n,1,3,1,1,n,n,n,n,n,n,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(05, [0,1,1,n,n,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(04, [0,1,1,n,n,1,0,0,0,2,0,0,0,0,0,4,0,0,2,0,0,0,1,1,n,n,n,n,n,1,4,1,1,n,n,n,n,n,1,0,0,0,0,0,0,4,0,0,2,0,0,0,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(03, [3,1,1,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,n,n,n,n,n,1,0,1,1,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,1,1,1,3,1,1,n,n,1,0,1,1])
		self.dibujarLineaDeElementos(02, [0,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,n,n,n,n,n,n,n,n,1,0,1,1,1,1,1,0,1,1])
		self.dibujarLineaDeElementos(01, [4,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,n,n,n,1,4,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,1,1,n,n,n,n,n,n,n,n,1,4,0,0,2,0,0,0,1,1])
		self.dibujarLineaDeElementos(00, [1,1,1,1,1,1,1,1,1,n,n,n,n,n,n,n,n,n,n,n,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,n,n,n,n,n,n,n,n,n,1,1,1,1,1,1,1,1,1])
	}
	
	method dibujarLineaDeElementos(posicionY, vectorFila) {
		
		(0..vectorFila.size()-1).forEach({x=> 
			if(vectorFila.get(x) == 1 ) {
				self.agregarParedEn(x, posicionY)
			}
			else if(vectorFila.get(x) == 0 ) {
				juego.agregarMonedaEn(x, posicionY, 90)
			}
			//Mientras mas chico sea el numero de chance, mas posibilades tiene de spawnear
			else if(vectorFila.get(x) == 2) {
				const serpienteChance = if (juego.dificultadExtrema()) 30 else 50
				juego.agregarSerpienteEn(x, posicionY, serpienteChance)
			}
			else if(vectorFila.get(x) == 3) {
				const pinchoChance = if (juego.dificultadExtrema()) 20 else 50
				juego.agregarPinchoEn(x, posicionY, pinchoChance)
			}
			else if(vectorFila.get(x) == 4) {
				const fuegoChance = if (juego.dificultadExtrema()) 20 else 50
				juego.agregarFuegoEn(x, posicionY, fuegoChance)
			}
		})
	}
	
	method agregarParedEn(x, y) {
		const pared = new Pared(position = game.at(x,y))
		game.addVisual(pared)
	}
}





