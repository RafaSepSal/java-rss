package bases;

import java.util.Random;
import java.util.Scanner;


public class AdivinaElNumero {
	
	public boolean hasNextInt(boolean seleccionPartida) {
		return seleccionPartida;
	}
	public static void main(String[] args) {
		
		Scanner scNumero = new Scanner(System.in);
		Scanner scPartidaNueva = new Scanner(System.in);
		int numero = new Random().nextInt(0,101);
		int elegido;
		int intentos = 0;
		int intentosRestantes;
		boolean repetida = false;
		int partida = 1;
		
		System.out.println("¿Quieres jugar una partida?");
		System.out.println("1. Sí 	2. No");
		
		while (!scPartidaNueva.hasNextInt()) {
			System.out.println("Error: introduce un número entero válido:");
			System.out.println("1. Jugar   -   2. Salir");
			scPartidaNueva.next();
		}
		
		partida = scPartidaNueva.nextInt();
		
		if (partida == 2) {
			System.out.println("De acuerdo, ¡hasta pronto!");
		} else if (partida == 1) {
			System.out.println("Acabo de pensar en un número, trata de adivinarlo. Tienes 7 intentos.");
		
				do {
					
					if (repetida == true) {
						System.out.println("He pensado en otro número, intenta adivinarlo. Tienes 7 intentos.");
						numero = new Random().nextInt(0,101);
					}
					
					
					
					
					
					elegido = scNumero.nextInt();

					
					intentos ++;
					intentosRestantes = 7 - intentos;
					repetida = false;
					 
						if(numero == elegido) {
							System.out.println("¡Genial, era el número " + numero + "! Has ganado en " + intentos + " intentos");
							System.out.println();
							System.out.println("¿Quieres jugar otra partida?");
							System.out.println("1. Sí 	2. No");
							partida = scPartidaNueva.nextInt();
							repetida = true;
							intentos = 0;
						
						} else if(intentos == 7 && numero != elegido) {
							System.out.println("Has agotado los intentos, fin de partida. ¿Quieres jugar otra?");
							System.out.println("1. Sí 	2. No");
							partida = scPartidaNueva.nextInt();
							repetida = true;
							intentos = 0;
						
						}else if(numero < elegido) {
							System.out.println("El número es menor, te quedan " + intentosRestantes + " intentos");
							
						} else {
								System.out.println("El número es mayor, te quedan " + intentosRestantes + " intentos");
							}
						
					
					if (partida == 2) {
						System.out.println("De acuerdo, ¡hasta pronto!");
					}
					
					
					
				} while (partida == 1);
		
		}
		
		scNumero.close();
		scPartidaNueva.close();
	}
}
