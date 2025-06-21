//Promedio
// Este ejercicio debe permitir ingresar una cantidad indefinida de
// n�meros y luego calcular el promedio. El programa debe finalizar
// cuando el usuario ingrese un valor negativo, el mismo no se debe
// incluir en el promedio.

Algoritmo Promedio
    Definir num, cant, prom Como Real 
    // Inicializaci�n de variables
    // Es crucial inicializar estas variables a cero antes de comenzar a usarlas,
    // para asegurar que los c�lculos se realicen a partir de un valor conocido.
    cant = 0    // Contador de n�meros v�lidos (positivos)
    prom = 0    // Acumulador de la suma de los n�meros v�lidos
	
    // Bucle principal para la entrada de n�meros:
    Repetir
        Escribir "Ingrese un numero (El programa finaliza cuando se ingresa un numero negativo):"
        Leer num 
		
        // Verificaci�n si el n�mero ingresado es positivo (v�lido para el promedio).
        Si num > 0 Entonces
            cant = cant + 1     // Incrementa el contador de n�meros v�lidos
            prom = prom + num   // Suma el n�mero actual al acumulador
        FinSi
    Hasta Que num < 0 // La condici�n de salida del bucle: cuando 'num' sea negativo.
	
    // Despu�s de que el bucle finaliza, se verifica si se ingres� al menos un n�mero positivo.
    Si cant = 0 Entonces
        // Si 'cant' es cero, significa que no se ingresaron n�meros positivos.
        Escribir "No hay numeros positivos ingresados, el promedio es: 0"
    Sino
        // Si hay n�meros positivos, se calcula y se muestra el promedio.
        Escribir "El promedio de los numeros ingresados es: ", prom / cant
    FinSi
	
FinAlgoritmo



