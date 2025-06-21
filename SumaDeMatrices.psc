// Suma de Matrices
// Este ejercicio solicita al usuario dos matrices, las suma elemento a elemento
// y muestra el resultado en una tercera matriz.

Algoritmo SumaDeMatrices
    Definir matrizA, matrizB, matrizSuma Como Entero
    Definir i, j, filas, columnas Como Entero
	
    // Solicitar dimensiones de las matrices
    Escribir "Ingrese la cantidad de filas:"
    Leer filas
    Escribir "Ingrese la cantidad de columnas:"
    Leer columnas
	
    // Dimensionar las matrices según lo ingresado
    Dimension matrizA[filas, columnas]
    Dimension matrizB[filas, columnas]
    Dimension matrizSuma[filas, columnas]
	
    // Ingreso de datos para la primera matriz
    Escribir "Ingrese los valores de la Matriz A:"
    Para i = 1 Hasta filas
        Para j = 1 Hasta columnas
            Escribir "A[", i, ",", j, "]: "
            Leer matrizA[i, j]
        FinPara
    FinPara
	
    // Ingreso de datos para la segunda matriz
    Escribir "Ingrese los valores de la Matriz B:"
    Para i = 1 Hasta filas
        Para j = 1 Hasta columnas
            Escribir "B[", i, ",", j, "]: "
            Leer matrizB[i, j]
        FinPara
    FinPara
	
    // Suma de las dos matrices y almacenamiento en matrizSuma
    Para i = 1 Hasta filas
        Para j = 1 Hasta columnas
            matrizSuma[i, j] = matrizA[i, j] + matrizB[i, j]
        FinPara
    FinPara
	
    // Mostrar la matriz resultante
    Escribir "La matriz suma es:"
    Para i = 1 Hasta filas
        Para j = 1 Hasta columnas
            Escribir Sin Saltar matrizSuma[i, j], "  "
        FinPara
        Escribir "" // Salto de línea al terminar cada fila
    FinPara
	
FinAlgoritmo
