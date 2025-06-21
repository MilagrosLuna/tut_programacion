// Invertir
// El ejercicio debe pedir que se ingrese una cadena de texto o frase
// y la retorna invertida.

Algoritmo Invertir
    Definir frase, fraseInv Como Caracter
    Definir i, longitudFrase Como Entero
	
    // Solicitar al usuario que ingrese una palabra o frase.
    Escribir "Ingrese una palabra o frase para invertirla:"
    Leer frase
	
    // Obtener la longitud de la frase. PSeInt cuenta desde 1 para la longitud.
    longitudFrase = Longitud(frase)
	
    // Bucle para invertir la frase:
    // Recorre la cadena 'frase' desde el �ltimo caracter hasta el primero.
    // La funci�n 'Subcadena(cadena, inicio, fin)' extrae una porci�n de la cadena.
    // Para obtener un solo caracter, 'inicio' y 'fin' deben ser el mismo valor.
	fraseInv = ""

    Para i = longitudFrase Hasta 1 Con Paso -1 Hacer
        // Concatena el caracter actual (obtenido desde el final de 'frase') al final de 'fraseInv'.
        // 'Subcadena(frase, i, i)' extrae el caracter en la posici�n 'i'.
        fraseInv = Concatenar(fraseInv, Subcadena(frase, i, i))
    FinPara
	
    // Mostrar la frase invertida al usuario.
    Escribir "La frase invertida es: ", fraseInv
	
FinAlgoritmo