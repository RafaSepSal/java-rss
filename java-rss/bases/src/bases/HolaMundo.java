package bases;

import java.util.Scanner;

public class HolaMundo {
	public static void main(String[] args) {
		System.out.println("Hola"); //hola qué tal, soy colosal
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Dime tu nombre: ");
		String recibido = sc.nextLine();
		
		System.out.println("Hola " + recibido);
		
		sc.close();
	}
}
