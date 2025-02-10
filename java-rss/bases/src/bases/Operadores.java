package bases;

import java.util.Scanner;

public class Operadores {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Dime un número: ");
		
		int a = sc.nextInt();
		
		System.out.println("Dime otro número: ");
		
		int b = sc.nextInt();
		
		
		
		
		if (a > b) {
		System.out.println("a es mayor que b");
		
		} else if (a < b) {
			System.out.println("a es menor que b");
		} else {
			System.out.println("a es igual a b");
		}
		
		sc.close();
	}
}
