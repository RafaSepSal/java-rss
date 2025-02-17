package bibliotecas;

import java.util.Scanner;



public class Consola_Ahorcado {
	private static Scanner SC = new Scanner(System.in);
	
	
	///////// FUNCIÓN QUE PIDE UN TEXTO EN CONSOLA DE UNA SOLA LETRA
	public static char pedirTexto(String mensaje) {
		System.out.println(mensaje);
		boolean incorrecto = true;
		String letra;
		char letraFinal = 0;
		
		do {
			letra = SC.nextLine();
			letra.toLowerCase();
			if (letra.length() == 1) {
				incorrecto = false;
				letraFinal = letra.charAt(0);
			}else {
				System.out.println("Error: introduce únicamente una letra");
			}
		}while(incorrecto);
		
		return letraFinal;
	}
	
	public static void dibujarAhorcado(int intentos) {
        switch (intentos) {
            case 1:
                System.out.println("         ");
                System.out.println("         ");
                System.out.println("____     ");
                break;
            case 2:
                System.out.println(" |       ");
                System.out.println(" |       ");
                System.out.println(" |       ");
                System.out.println("_|__     ");
                break;
            case 3:
                System.out.println("  ______ ");
                System.out.println(" |       ");
                System.out.println(" |       ");
                System.out.println(" |       ");
                System.out.println("_|__     ");
                break;
            case 4:
                System.out.println("  _______");
                System.out.println(" |     | ");
                System.out.println(" |       ");
                System.out.println(" |       ");
                System.out.println("_|___    ");
                break;
            case 5:
                System.out.println("  _______");
                System.out.println(" |     | ");
                System.out.println(" |     O ");
                System.out.println(" |     | ");
                System.out.println(" |    /|\\");
                break;
            case 6:
                System.out.println("  _______");
                System.out.println(" |     | ");
                System.out.println(" |     O ");
                System.out.println(" |     | ");
                System.out.println(" |    /|\\ ");
                System.out.println(" |    /  ");
                break;
            case 7:
                System.out.println("  _______");
                System.out.println(" |     | ");
                System.out.println(" |     O ");
                System.out.println(" |     | ");
                System.out.println(" |    /|\\ ");
                System.out.println(" |    / \\ ");
                break;
            case 8:
                System.out.println("  _______");
                System.out.println(" |     | ");
                System.out.println(" |     O ");
                System.out.println(" |     | ");
                System.out.println(" |    /|\\ ");
                System.out.println(" |    / \\ ");
                break;
            case 9:
                System.out.println("  _______");
                System.out.println(" |     | ");
                System.out.println(" |     O ");
                System.out.println(" |     | ");
                System.out.println(" |    /|\\ ");
                System.out.println(" |    / \\ ");
                break;
            case 10:
                System.out.println("  _______");
                System.out.println(" |     | ");
                System.out.println(" |     O ");
                System.out.println(" |     | ");
                System.out.println(" |    /|\\ ");
                System.out.println(" |    / \\ ");
                System.out.println(" ¡Perdiste! La palabra era: ");
                break;
        }
	}
}
