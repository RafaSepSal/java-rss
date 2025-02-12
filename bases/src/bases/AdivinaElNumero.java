package bases;

import java.util.Random;

import bibliotecas.Consola_AeN;


public class AdivinaElNumero {
	public static void main(String[] args) {
		
		boolean salir = false;
		Integer recordLocal = 99;
		Integer puntuacion = 99;
		
		do {
			System.out.println("""
					1. Jugar
					2. Ver récord local
					3. Salir
					""");
			
			int menu = Consola_AeN.pedirEnteroRango("Elige una opción: ", 1, 3);
			
			switch(menu) {
				case 1:
					puntuacion = nuevaPartida(puntuacion);
					
					if (puntuacion < recordLocal) {recordLocal = puntuacion;}
					
					break;
				case 2:
					if (recordLocal == 99) {
						System.out.println("Aún no se ha registrado ningún récord");
						System.out.println();
					} else {
						System.out.println("El récord actual es: " + recordLocal);
						System.out.println();
					}
					break;
				case 3:
					System.out.println("De acuerdo, ¡hasta luego!");
					salir = true;
			}
			
		} while (salir == false);
		
	}

	private static Integer nuevaPartida(Integer record) {
		Integer recordPartida = 0;
		record = 99;
		boolean repetirPartida;
		boolean hasPerdido = false;
		boolean hasGanado = false;
		int numAleatorio;
		int numElegido;
		Integer intentos;
		int intentosRestantes;
		int gameOver = 0;
		
		do {
			repetirPartida = false;
			System.out.println("Acabo de pensar en un número entre 0 y 100, adivínalo, tienes 7 intentos: ");
			intentos = 0;
			intentosRestantes = 7;
			numAleatorio = new Random().nextInt(0,101);
			numElegido = Consola_AeN.pedirEnteroRango("Elige un número: ", 0, 100);
			
			do {
				intentos = intentos + 1;
				
				if (numAleatorio < numElegido) {
					System.out.println("El número es menor");
					intentosRestantes = intentosRestantes - 1;
					if (intentosRestantes > 0) {
						System.out.println("Te quedan " + intentosRestantes + " intentos");
						numElegido = Consola_AeN.pedirEnteroRango("", 0, 100);
					} else { hasPerdido = true; }
					
				} else if (numAleatorio > numElegido) {
					System.out.println("El número es mayor");
					intentosRestantes = intentosRestantes - 1;
					if (intentosRestantes > 0) {
						System.out.println("Te quedan " + intentosRestantes + " intentos");
						numElegido = Consola_AeN.pedirEnteroRango("", 0, 100);
						
					} else { hasPerdido = true; }
					
				} else if (numAleatorio == numElegido) { hasGanado = true; }
				
			} while (hasGanado == false && hasPerdido == false);
			
			
			
			if (hasPerdido == true) {
				System.out.println("""
						Te has quedado sin intentos, has perdido.
						
						¿Quieres jugar otra partida?
						1. Jugar otra vez
						2. Volver al menú
						""");
				gameOver = Consola_AeN.pedirEnteroRango("", 1, 2);
				if (gameOver == 1) { repetirPartida = true; }
			}
			
			if (hasGanado == true) {
				recordPartida = intentos;
				System.out.println("¡Has ganado! El número era " + numAleatorio);
				System.out.println("Has acertado en " + intentos + " intentos");
				System.out.println("""
						
						¿Quieres jugar otra partida?
						1. Jugar otra vez
						2. Volver al menú
						""");
				gameOver = Consola_AeN.pedirEnteroRango("", 1, 2);
				if (gameOver == 1) { repetirPartida = true; }
			}
			
			if (recordPartida != 0 && recordPartida < record) {
				record = recordPartida;
			}
			
		} while (repetirPartida);
		
		
		
		return record;
	}
}
