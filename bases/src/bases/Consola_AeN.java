package bibliotecas;

import java.util.Scanner;

public class Consola_AeN {

	////////// ESCÁNER DE LA BIBLIOTECA
	private static Scanner SC = new Scanner(System.in);
	
	//////////  FUNCIÓN PARA PEDIR UN TEXTO EN CONSOLA
	public static String pedirTexto(String mensaje) {
		System.out.println(mensaje);
		
		return SC.nextLine();
	}
	
	////////// FUNCIÓN PARA PEDIR UN ENTERO EN CONSOLA CON MANEJO DE ERROR (NO ENTERO)
	public static int pedirEntero(String mensaje) {
		int entero = 0;
		boolean incorrecto = true;
		
		do {
			try {
				entero = Integer.parseInt(pedirTexto(mensaje));
				incorrecto = false;
			} catch (NumberFormatException e) {
				System.out.println("Error: introduce un número entero válido");
			}
		} while (incorrecto);
		
		return entero;
		
	}
	
	////////// FUNCIÓN PARA PEDIR UN ENTERO EN CONSOLA DENTRO DEL RANGO CORRESPONDIENTE
	public static int pedirEnteroRango(String mensaje, int minimo, int maximo) {
		int entero;
		
		do {
			entero = pedirEntero(mensaje);
			
			if (entero < minimo || entero > maximo) {
				System.out.println("Error: el número debe estar entre " + minimo + " y " + maximo);
			}
		} while (entero < minimo || entero > maximo);
		
		
		return entero;
	}
	
}
