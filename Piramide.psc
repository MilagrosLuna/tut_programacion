// Pir�mide 
// El usuario debe ingresar un n�mero y genera una pir�mide de n�meros hasta llegar al n�mero. 
// Cada n�mero es una fila.

Algoritmo Piramide
    Definir numMaximo Como Entero
    Definir fila, numRepeticiones, espaciosInicio Como Entero
    Definir i, j Como Entero // Variables de control para bucles
	
    Definir anchoCelda, anchoTotalBase Como Entero
    Definir espacioEntreNumeros Como Entero // Nuevo: Define un espacio extra
    espacioEntreNumeros = 1  // Podemos ajustar este valor si queremos m�s o menos espacio
	
    // Bucle para la comprobacion de numero ingresado
    Repetir
        Escribir "Ingrese un numero entero positivo para la cima de la piramide (ej. 5)"
        Leer numMaximo
		
        Si numMaximo <= 0 Entonces
            Escribir "El numero debe ser mayor que cero."
        FinSi
    Hasta Que numMaximo > 0
	
    // --- PASO 1: Calcular el ancho de la celda ---
    Si numMaximo = 0 Entonces
        anchoCelda = 1
    Sino
        anchoCelda = 0
        tempNum = numMaximo
        Mientras tempNum > 0 Hacer
            tempNum = trunc(tempNum / 10)
            anchoCelda = anchoCelda + 2
        FinMientras
    FinSi
	
    // --- PASO 2: Calcular el ancho total que tendr� la base de la pir�mide ---
    // Ahora, el ancho de cada "elemento" en la base es anchoCelda + ESPACIO_ENTRE_NUMEROS.
    // Solo se a�ade el espacio si no es el �ltimo n�mero de la fila.
    // El n�mero de "slots" es (2 * numMaximo - 1).
    // El ancho de la base ser�: (numRepeticiones de la base * anchoCelda) + (numRepeticiones de la base - 1 * espacioEntreNumeros)
    anchoTotalBase = (2 * numMaximo - 1) * (anchoCelda + espacioEntreNumeros) - espacioEntreNumeros 
	
    // Bucle principal para cada fila, desde numMaximo hasta 1
    Para fila = numMaximo Hasta 1 Con Paso -1 Hacer
        // Calcular cu�ntos n�meros de la 'fila' actual se deben imprimir en esta l�nea.
        numRepeticiones = 2 * (numMaximo - fila) + 1
		
        // --- CALCULO DEL ANCHO DE LA FILA ACTUAL ---
        // Considera el ancho de cada n�mero y el espacio entre ellos.
        // Similar al anchoTotalBase, pero para la fila actual.
        anchoFilaActual = (numRepeticiones * (anchoCelda + espacioEntreNumeros)) - espacioEntreNumeros // Resta el �ltimo espacio
		
        // --- CALCULO DE LOS ESPACIOS INICIALES PARA CENTRAR ---
        espaciosInicio = (anchoTotalBase - anchoFilaActual) / 2
		
        // Impresi�n de los espacios iniciales para centrar la fila.
        Para i = 1 Hasta espaciosInicio Hacer
            Escribir " " Sin Saltar
        FinPara
		
        // Impresi�n de los n�meros para la fila actual.
        Para i = 1 Hasta numRepeticiones Hacer
            // --- SIMULACI�N DE FORMATO DE N�MERO PARA PSeInt ---
            // Calcular el ancho del n�mero de la fila actual.
            Si fila = 0 Entonces
                anchoNumeroActual = 1
            Sino
                anchoNumeroActual = 0
                tempNum = fila
                Mientras tempNum > 0 Hacer
                    tempNum = trunc(tempNum / 10)
                    anchoNumeroActual = anchoNumeroActual + 1
                FinMientras
            FinSi
			
            // Calcular cu�ntos espacios de relleno necesitamos ANTES de imprimir el n�mero.
            espaciosRelleno = anchoCelda - anchoNumeroActual
			
            // Imprimir los espacios de relleno.
            Para j = 1 Hasta espaciosRelleno Hacer
                Escribir " " Sin Saltar
            FinPara
			
            // Imprimir el n�mero de la fila.
            Escribir fila Sin Saltar
			
            // A�ADIR ESPACIO ADICIONAL ENTRE LOS N�MEROS (EXCEPTO EL �LTIMO)
            Si i < numRepeticiones Entonces
                Para j = 1 Hasta ESPACIO_ENTRE_NUMEROS Hacer
                    Escribir " " Sin Saltar
                FinPara
            FinSi
        FinPara
		
        Escribir "" // Salto de l�nea al final de cada fila para pasar a la siguiente
    FinPara

FinAlgoritmo