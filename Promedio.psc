//Promedio
// Este ejercicio debe permitir ingresar una cantidad indefinida de
// números y luego calcular el promedio. El programa debe finalizar
// cuando el usuario ingrese un valor negativo, el mismo no se debe
// incluir en el promedio.

Algoritmo Promedio
    Definir num, cant, prom Como Real 
    // Inicialización de variables
    // Es crucial inicializar estas variables a cero antes de comenzar a usarlas,
    // para asegurar que los cálculos se realicen a partir de un valor conocido.
    cant = 0    // Contador de números válidos (positivos)
    prom = 0    // Acumulador de la suma de los números válidos
	
    // Bucle principal para la entrada de números:
    Repetir
        Escribir "Ingrese un numero (El programa finaliza cuando se ingresa un numero negativo):"
        Leer num 
		
        // Verificación si el número ingresado es positivo (válido para el promedio).
        Si num > 0 Entonces
            cant = cant + 1     // Incrementa el contador de números válidos
            prom = prom + num   // Suma el número actual al acumulador
        FinSi
    Hasta Que num < 0 // La condición de salida del bucle: cuando 'num' sea negativo.
	
    // Después de que el bucle finaliza, se verifica si se ingresó al menos un número positivo.
    Si cant = 0 Entonces
        // Si 'cant' es cero, significa que no se ingresaron números positivos.
        Escribir "No hay numeros positivos ingresados, el promedio es: 0"
    Sino
        // Si hay números positivos, se calcula y se muestra el promedio.
        Escribir "El promedio de los numeros ingresados es: ", prom / cant
    FinSi
	
FinAlgoritmo



