// Tri�ngulo
// Escribe un programa que calcule el �rea de un tri�ngulo dados su
// base y su altura. (Datos ingresados por el usuario) 

Algoritmo Triangulo
    Definir base, altura Como Real
	
    //Se utiliza un bucle 'Repetir-Hasta Que' para asegurar que la base ingresada sea un numero positivo.
    Repetir
        Escribir "Ingrese la base del triangulo (debe ser un numero positivo):"
        Leer base 
		
        // Comprobaci�n si la base es v�lida
        Si base <= 0 Entonces
            Escribir "Error: La base debe ser un numero positivo. Por favor, intente de nuevo."
        FinSi
    Hasta Que base > 0 // El bucle se repite hasta que 'base' sea mayor que cero.
	
    // Se utiliza un bucle 'Repetir-Hasta Que' similar para asegurar que la altura ingresada sea un n�mero positivo.
    Repetir
        Escribir "Ingrese la altura del triangulo (debe ser un numero positivo):"
        Leer altura
		
        // Comprobaci�n si la altura es v�lida
        Si altura <= 0 Entonces
            Escribir "Error: La altura debe ser un numero positivo. Por favor, intente de nuevo."
        FinSi
    Hasta Que altura > 0 // El bucle se repite hasta que 'altura' sea mayor que cero.
	
    Escribir "El area del triangulo es: ", (base * altura) / 2 // Calcula y muestra el �rea usando la f�rmula.

FinAlgoritmo