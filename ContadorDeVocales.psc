// Contador de vocales
// Este ejercicio debe solicitar que se ingrese una palabra o frase.
// Para que sea analizada y retorne cu�ntas vocales (tanto
// may�sculas como min�sculas) contiene.

Algoritmo ContadorDeVocales
	Dimension vocales(5)
	Definir frase Como Caracter
    Definir i Como Entero
    Definir totalMinusculas Como Entero
    Definir totalMayusculas Como Entero
	
    // Inicializaci�n del arreglo de contadores
    // Es crucial inicializar todos los elementos del arreglo a cero antes de comenzar a contar.
    Para i = 1 Hasta 5 Hacer
        vocales(i) = 0
    FinPara
    totalMinusculas = 0
    totalMayusculas = 0
	
    // Se utiliza un bucle 'Repetir-Hasta Que' para asegurar que el usuario ingrese al menos una palabra o frase no vacia.
    Repetir
        Escribir "Ingrese una palabra o frase (no puede estar vacia):"
        Leer frase // Lee la frase ingresada por el usuario
		
        Si Longitud(frase) = 0 Entonces // Comprobaci�n si la frase esta vacia
            Escribir "Error: No ha ingresado ninguna palabra o frase. Por favor, intente de nuevo."
        FinSi
    Hasta Que Longitud(frase) > 0 // El bucle se repite hasta que la longitud de la frase sea mayor que 0.
	
    // Recorre cada caracter de la frase, desde el primero hasta el ultimo.
    // La funci�n 'Longitud(frase)' devuelve la cantidad de caracteres.
    Para i = 1 Hasta Longitud(frase) Hacer
		// 'Subcadena(frase, i, i)' extrae el caracter en la posici�n 'i'.
        // La estructura 'Segun' permite evaluar el caracter extraido y ejecutar
        // el codigo correspondiente segun sea una vocal (mayuscula o minuscula).
        Segun Subcadena(frase, i, i) Hacer
			// Si el caracter es una vocal. Incrementa el contador de la variable asignada a su vocal.
            "a": 
                vocales(1) = vocales(1) + 1
                totalMinusculas = totalMinusculas + 1
            "A": 
                vocales(1) = vocales(1) + 1
                totalMayusculas = totalMayusculas + 1
            "e": 
                vocales(2) = vocales(2) + 1
                totalMinusculas = totalMinusculas + 1
            "E": 
                vocales(2) = vocales(2) + 1
                totalMayusculas = totalMayusculas + 1
            "i": 
                vocales(3) = vocales(3) + 1
                totalMinusculas = totalMinusculas + 1
            "I": 
                vocales(3) = vocales(3) + 1
                totalMayusculas = totalMayusculas + 1
            "o": 
                vocales(4) = vocales(4) + 1
                totalMinusculas = totalMinusculas + 1
            "O": 
                vocales(4) = vocales(4) + 1
                totalMayusculas = totalMayusculas + 1
            "u": 
                vocales(5) = vocales(5) + 1
                totalMinusculas = totalMinusculas + 1
            "U": 
                vocales(5) = vocales(5) + 1
                totalMayusculas = totalMayusculas + 1
        FinSegun
    FinPara
	
    // Presentaci�n de resultados
    Escribir "Cantidad de A/a: ", vocales(1)
    Escribir "Cantidad de E/e: ", vocales(2)
    Escribir "Cantidad de I/i: ", vocales(3)
    Escribir "Cantidad de O/o: ", vocales(4)
    Escribir "Cantidad de U/u: ", vocales(5)
    Escribir "Total de vocales min�sculas: ", totalMinusculas
    Escribir "Total de vocales may�sculas: ", totalMayusculas
   
	
FinAlgoritmo