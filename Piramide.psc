// Pir�mide 
// El usuario debe ingresar un n�mero y genera una pir�mide de n�meros hasta llegar al n�mero. 
// Cada n�mero es una fila.

Algoritmo Piramide
    Definir numMaximo Como Entero
    Definir fila, numCaracteres, espacios Como Entero
	
	//Bucle para la comprobacion de numero ingresado
    Repetir
        Escribir "Ingrese un numero entero positivo para la cima de la piramide (ej. 5)"
        Leer numMaximo
		
        Si numMaximo <= 0 Entonces
            Escribir "El numero debe ser mayor que cero."
        FinSi
    Hasta Que numMaximo > 0 
	
	// Bucle para cada fila, desde el numeroMaximo hasta 1
    Para fila = numMaximo Hasta 1 Con Paso -1 Hacer
        // C�lculo de 'numCaracteres':
        // Determina cu�ntos n�meros se deben imprimir en la fila actual.
        // La primera fila (fila = numMaximo) tiene 1 caracter.
        // La segunda fila (fila = numMaximo - 1) tiene 3 caracteres.
        // La f�rmula general para una pir�mide que se expande en 2 caracteres por fila es:
        // numCaracteres = 2 * (numMaximo - fila) + 1
        numCaracteres = 2 * (numMaximo - fila) + 1
		
        // C�lculo de 'espacios':
        // Determina la cantidad de espacios necesarios al inicio de cada fila para centrarla.
        // El n�mero total de caracteres de la base (cuando fila = 1) es: 2 * (numMaximo - 1) + 1.
        // Para centrar, se resta la cantidad de caracteres de la fila actual del total de caracteres de la base,
        // y se divide entre 2.
        // Por ejemplo, si numMaximo es 3:
        // Base (fila=1): numCaracteres = 2*(3-1)+1 = 5.
        // Para la primera fila (fila=3), numCaracteres = 1. Espacios = (5 - 1) / 2 = 2.
        // Para la segunda fila (fila=2), numCaracteres = 3. Espacios = (5 - 3) / 2 = 1.
        // Para la tercera fila (fila=1), numCaracteres = 5. Espacios = (5 - 5) / 2 = 0.
        espacios = ((2 * (numMaximo - 1) + 1) - numCaracteres) / 2
		
        // Impresi�n de los espacios iniciales para centrar la fila.
        Si espacios > 0 Entonces
            Para i = 1 Hasta espacios Hacer
                Escribir " " Sin Saltar 
            FinPara
        FinSi
		
        // Impresi�n de los n�meros para la fila actual.
        Para i = 1 Hasta numCaracteres Hacer
            Escribir fila Sin Saltar 
        FinPara
		
        Escribir "" // Salto de l�nea al final de cada fila para pasar a la siguiente
    FinPara 
	
FinAlgoritmo