package bibliotecas;

import java.util.Scanner;



public class Consola_Ahorcado {
	private static Scanner SC = new Scanner(System.in);
	
	
	///////// FUNCIÓN QUE PIDE UN TEXTO EN CONSOLA
	public static String pedirTexto(String mensaje) {
		System.out.println(mensaje);
		boolean incorrecto = true;
		char[] letrasMensaje;
		
		do {
			letrasMensaje = mensaje.toCharArray();
			if (letrasMensaje.length > 1) {
			}
		}while();
		
		return SC.nextLine();
	}
}
