package bases;

import java.util.ArrayList;
import java.util.Scanner;

public class Ocupacion {
	public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<Persona> personas = new ArrayList<>();
        
        while (true) {
            System.out.println("""
            		
            		
                    1. Listado
                    2. Mostrar número de personas
                    3. Añadir
                    4. Modificar
                    5. Quitar por nombre
                    0. Salir
                    """);

            System.out.print("Selecciona una opción: ");
            int opcion = scanner.nextInt();
            scanner.nextLine();  // Limpiar el buffer
            
            switch (opcion) {
                case 1:
                    // Listar todas las personas
                    System.out.println("Listado de personas:");
                    for (Persona persona : personas) {
                        System.out.println(persona);
                    }
                    break;

                case 2:
                    // Mostrar el número de personas
                    System.out.println("Número de personas: " + personas.size());
                    break;

                case 3:
                    // Añadir una persona
                    System.out.print("Introduce el nombre de la persona a añadir: ");
                    String nombreAñadir = scanner.nextLine();
                    personas.add(new Persona(nombreAñadir));
                    System.out.println("Persona añadida correctamente.");
                    break;

                case 4:
                    // Modificar una persona
                    System.out.print("Introduce el nombre de la persona a modificar: ");
                    String nombreModificar = scanner.nextLine();
                    boolean encontrado = false;
                    for (Persona persona : personas) {
                        if (persona.nombre.equalsIgnoreCase(nombreModificar)) {
                            System.out.print("Introduce el nuevo nombre: ");
                            String nuevoNombre = scanner.nextLine();
                            persona.nombre = nuevoNombre;
                            System.out.println("Persona modificada correctamente.");
                            encontrado = true;
                            break;
                        }
                    }
                    if (!encontrado) {
                        System.out.println("Persona no encontrada.");
                    }
                    break;

                case 5:
                    // Quitar una persona por nombre
                    System.out.print("Introduce el nombre de la persona a quitar: ");
                    String nombreQuitar = scanner.nextLine();
                    boolean eliminada = personas.removeIf(persona -> persona.nombre.equalsIgnoreCase(nombreQuitar));
                    if (eliminada) {
                        System.out.println("Persona eliminada correctamente.");
                    } else {
                        System.out.println("Persona no encontrada.");
                    }
                    break;

                case 0:
                    // Salir del programa
                    System.out.println("¡Hasta luego!");
                    scanner.close();
                    return;

                default:
                    System.out.println("Opción no válida.");
            }
        }
	}
}
