package bases;

import java.util.ArrayList;
import java.util.Random;

import bibliotecas.Consola_AeN;
import bibliotecas.Consola_Ahorcado;

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
		
		boolean repetirPartida;
		int gameOver;
		int intentos;
		boolean acierto;
		int contadorAciertos;
		
		String palabraEscondida;
		char usuario;
		char[] letrasPalabraEscondida;
		char[] palabraMostrada;
		boolean hasGanado;
		boolean hasPerdido;
		
		do {
			repetirPartida = false;
			hasGanado = false;
			hasPerdido = false;
			intentos = 0;
			contadorAciertos = 0;
			
			palabraEscondida = palabras.get(new Random().nextInt(0, (palabras.size() - 1)));
			letrasPalabraEscondida = palabraEscondida.toCharArray();
			
			palabraMostrada = new char[letrasPalabraEscondida.length];
			for (int i = 0; i < palabraMostrada.length; i++) {
				palabraMostrada[i] = '_';
			}
			
			System.out.println("He pensado una palabra, adivínala");
			System.out.println(palabraEscondida);
			
			for (int i = 0; i < palabraMostrada.length; i++) {
                System.out.print(palabraMostrada[i] + " ");
            }
            System.out.println();
			
			do {
				acierto = false;
				System.out.println();
				usuario = Consola_Ahorcado.pedirTexto("Di una letra: ");
				
				for (int indice = 0; indice < letrasPalabraEscondida.length; indice++) {
					if (letrasPalabraEscondida[indice] == usuario) {
						palabraMostrada[indice] = usuario;
                        acierto = true;
                        contadorAciertos++;
					}
				}
				
				if (!acierto) {
					intentos ++;
					dibujarAhorcado(intentos);
				}
				
				for (int i = 0; i < palabraMostrada.length; i++) {
                    System.out.print(palabraMostrada[i] + " ");
                }
                System.out.println();
				
				if (intentos == 10) {
					hasPerdido = true;
				} else if (contadorAciertos == letrasPalabraEscondida.length) {
					hasGanado = true;
				}
				
			} while (!hasGanado && !hasPerdido);
			
			if (hasGanado) {
				System.out.println("¡Has acertado! La palabra era " + palabraEscondida);
				
				gameOver = Consola_AeN.pedirEnteroRango("¿Quieres probar otra vez? ", 1, 2);
				if (gameOver == 1) { repetirPartida = true; }
			}
			
			if (hasPerdido) {
				System.out.println("Has perdido. La palabra era " + palabraEscondida);
				
				gameOver = Consola_AeN.pedirEnteroRango("¿Quieres probar otra vez? ", 1, 2);
				if (gameOver == 1) { repetirPartida = true; }
			}
			
		}while (repetirPartida);
	}
}
