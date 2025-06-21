// Triángulo
// Escribe un programa que calcule el área de un triángulo dados su
// base y su altura. (Datos ingresados por el usuario) 

Algoritmo Triangulo
    Definir base, altura Como Real
	
    //Se utiliza un bucle 'Repetir-Hasta Que' para asegurar que la base ingresada sea un numero positivo.
    Repetir
        Escribir "Ingrese la base del triangulo (debe ser un numero positivo):"
        Leer base 
		
        // Comprobación si la base es válida
        Si base <= 0 Entonces
            Escribir "Error: La base debe ser un numero positivo. Por favor, intente de nuevo."
        FinSi
    Hasta Que base > 0 // El bucle se repite hasta que 'base' sea mayor que cero.
	
    // Se utiliza un bucle 'Repetir-Hasta Que' similar para asegurar que la altura ingresada sea un número positivo.
    Repetir
        Escribir "Ingrese la altura del triangulo (debe ser un numero positivo):"
        Leer altura
		
        // Comprobación si la altura es válida
        Si altura <= 0 Entonces
            Escribir "Error: La altura debe ser un numero positivo. Por favor, intente de nuevo."
        FinSi
    Hasta Que altura > 0 // El bucle se repite hasta que 'altura' sea mayor que cero.
	
    Escribir "El area del triangulo es: ", (base * altura) / 2 // Calcula y muestra el área usando la fórmula.

FinAlgoritmo