package bases;

import java.util.ArrayList;
import java.util.Random;

public class Ahorcado {
	public static void main(String[] args) {
		ArrayList<String> palabras = new ArrayList<String>();
		palabras.add("colmena");
		palabras.add("timbre");
		palabras.add("infusion");
		palabras.add("reventar");
		palabras.add("panorama");
		palabras.add("pensamiento");
		palabras.add("coletas");
		palabras.add("candelabro");
		palabras.add("caries");
		palabras.add("cabina");
		
		boolean repetirPartida = false;
		int intentos;
		
		String palabraEscondida;
		char[] letrasPalabraEscondida;
		char[] letrasUsuario;
		
		do {
			intentos = 0;
			palabraEscondida = palabras.get(new Random().nextInt(0, (palabras.size() - 1)));
			letrasPalabraEscondida = palabraEscondida.toCharArray();
			System.out.println(palabraEscondida);
			System.out.println(letrasPalabraEscondida.length);
			
			System.out.println("He pensado una palabra, adivínala");
			for (int indice = 0; indice < letrasPalabraEscondida.length; indice++) {
				System.out.print("_ ");
			}
			
			do {
				
				
				
			} while (intentos < 10);
			
			
		}while (repetirPartida == true);
	}
}
