//Calculadora
//Este ejercicio debe solicitar dos números y la operación que desea
//realizar (suma, resta, multiplicación o división). Luego, calculará y
//mostrará el resultado correspondiente según la operación
//seleccionada.

Algoritmo Calculadora
    Definir numA, numB Como Real
    Definir operacion Como Caracter
	
    Escribir "Por favor, escriba el primer numero:"
	Leer numA
    
    Escribir "Por favor, escriba el segundo numero:"
	Leer numB
	
    // Este bucle asegura que la operación ingresada sea una de las permitidas.
    Repetir
        Escribir "Ingrese la operacion que desea realizar (+, -, *, /):"
        Leer operacion
		
        // Verifica si la operacion es una de las validas.
        Si operacion = "+" O operacion = "-" O operacion = "*" O operacion = "/" Entonces
            // La operacion es valida, podemos salir del bucle.
            Escribir "" // Salto de línea para mejor visualizacion.
        Sino
            // La operacion no es valida, se informa al usuario y se repite el bucle.
            Escribir "Error: Operacion incorrecta. Por favor, use +, -, * o /."
        FinSi
    Hasta Que operacion = "+" O operacion = "-" O operacion = "*" O operacion = "/"
	
	// La estructura 'Segun' evalúa el valor de 'operacion' y ejecuta el bloque de codigo correspondiente.
    Segun operacion Hacer
        "+": Escribir "Resultado: ", numA + numB
        "-": Escribir "Resultado: ", numA - numB
        "*": Escribir "Resultado: ", numA * numB
        "/":// Es fundamental manejar el caso de division por cero para evitar errores.
            Si numB = 0 Entonces
                Escribir "Error: No se puede dividir por cero."
            Sino
                Escribir "Resultado: ", numA / numB
            FinSi
        De Otro Modo:
            // Este caso en teoría no deberia alcanzarse si la validacion previa fue exitosa.
            Escribir "Error inesperado en la operacion."
    FinSegun

FinAlgoritmo