// Contador de vocales
// Este ejercicio debe solicitar que se ingrese una palabra o frase.
// Para que sea analizada y retorne cuántas vocales (tanto
// mayúsculas como minúsculas) contiene.

Algoritmo ContadorDeVocales
	Dimension vocales[5]
	Definir frase Como Caracter
    Definir i Como Entero
	
    // Inicialización del arreglo de contadores
    // Es crucial inicializar todos los elementos del arreglo a cero antes de comenzar a contar.
    Para i = 1 Hasta 5 Hacer
        vocales[i] = 0 // Inicializa cada contador de vocal a cero
    FinPara
	
    // Se utiliza un bucle 'Repetir-Hasta Que' para asegurar que el usuario ingrese al menos una palabra o frase no vacia.
    Repetir
        Escribir "Ingrese una palabra o frase (no puede estar vacia):"
        Leer frase // Lee la frase ingresada por el usuario
		
        // Comprobación si la frase esta vacia
        Si Longitud(frase) = 0 Entonces
            Escribir "Error: No ha ingresado ninguna palabra o frase. Por favor, intente de nuevo."
        FinSi
    Hasta Que Longitud(frase) > 0 // El bucle se repite hasta que la longitud de la frase sea mayor que 0.
	
    // Recorre cada caracter de la frase, desde el primero hasta el ultimo.
    // La función 'Longitud(frase)' devuelve la cantidad de caracteres.
    Para i = 1 Hasta Longitud(frase) Hacer
        // 'Subcadena(frase, i, i)' extrae el caracter en la posición 'i'.
        // La estructura 'Segun' permite evaluar el caracter extraido y ejecutar
        // el codigo correspondiente segun sea una vocal (mayuscula o minuscula).
        Segun Subcadena(frase, i, i) Hacer
			// Si el caracter es 'x' o 'X': Incrementa el contador de la vocal 'a'
            "a", "A": vocales[1] = vocales[1] + 1
            "e", "E": vocales[2] = vocales[2] + 1 
            "i", "I": vocales[3] = vocales[3] + 1 
            "o", "O": vocales[4] = vocales[4] + 1 
            "u", "U": vocales[5] = vocales[5] + 1 
        FinSegun 
    FinPara 
	
    // Presentacion de Resultados
    Escribir "Cantidad de A/a: ", vocales[1]
    Escribir "Cantidad de E/e: ", vocales[2]
    Escribir "Cantidad de I/i: ", vocales[3]
    Escribir "Cantidad de O/o: ", vocales[4]
    Escribir "Cantidad de U/u: ", vocales[5]
	Escribir "Total de vocales: ", vocales[1] + vocales[2] + vocales[3] + vocales[4] + vocales[5]
	
FinAlgoritmo
