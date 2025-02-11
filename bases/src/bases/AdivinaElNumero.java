package bases;

import java.util.Random;

import bibliotecas.Consola_AeN;


public class AdivinaElNumero {
	public static void main(String[] args) {
		
		boolean salir = false;
		Integer recordLocal = null;
		Integer record = null;
		
		do {
			System.out.println("1. Jugar");
			System.out.println("2. Ver récord local");
			System.out.println("3. Salir");
			
			int menu = Consola_AeN.pedirEnteroRango("Elige una opción: ", 1, 3);
			
			switch(menu) {
				case 1:
					nuevaPartida(record);
					
					break;
				case 2:
					if (recordLocal == null) {
						System.out.println("Aún no se ha registrado ningún récord");
					} else {
						System.out.println("El récord actual es: " + recordLocal);
					}
					break;
				case 3:
					System.out.println("De acuerdo, ¡hasta luego!");
					salir = true;
			}
			
		} while (salir == false);
		
	}

	private static void nuevaPartida(Integer record) {
		boolean repetirPartida = false;
		int numAleatorio;
		int numElegido;
		int intentos;
		int intentosRestantes;
		
		do {
			System.out.println("Acabo de pensar en un número entre 0 y 100, adivínalo, tienes 7 intentos: ");
			intentos = 0;
			numAleatorio = new Random().nextInt(0,101);
			numElegido = Consola_AeN.pedirEnteroRango("Elige un número: ", 0, 100);
			
			do {
				intentos ++;
				
				if (numAleatorio < numElegido) {
					intentosRestantes = 7;
					System.out.println("El número es menor");
					if (intentos > 0) {System.out.println("Te quedan " + intentosRestantes + " intentos");}
					numElegido = Consola_AeN.pedirEnteroRango("", 0, 100);
					
				} else if (numAleatorio > numElegido) {
					System.out.println("El número es mayor");
					if (intentos > 0) {System.out.println("Te quedan " + intentosRestantes + " intentos");}
					numElegido = Consola_AeN.pedirEnteroRango("", 0, 100);
				}
				
			} while (numElegido == numAleatorio || intentos == 0);
			
			
			
			
		} while (repetirPartida);
		
	}
}
