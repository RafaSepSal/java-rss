package bases;

public class Bucles {
	public static void main(String[] args) {
		int x = 1;
		
		while (x <= 5) {
		System.out.println(x);
		x = x + 1;
		}
		
		System.out.println("Se acabó");
		
		x = 1;
		
		do {
			System.out.println(x);
			x += 1;
		} while(x <= 5);
	
		for(int c = 1; c <= 5; c++) {
			System.out.println(c);
		}
		
	}
}
