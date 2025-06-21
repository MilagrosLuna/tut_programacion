// Tabla de multiplicar
// Genera la tabla de multiplicar (hasta n x 20) de un número
// ingresado por el usuario. 

Algoritmo TablaDeMultiplicar
	Definir i Como Entero
    Definir num Como Real
    
    //Bucle para validar la entrada del usuario con restriccion num >= 0
    Repetir
        Escribir "Ingrese un numero para generar su tabla de multiplicar (mayor que cero):"
        Leer num
        Si num <= 0 Entonces
            Escribir "Por favor, ingrese un numero positivo"
        FinSi
    Hasta Que num > 0
	
	//Tabla de numero elegido
	Escribir "Tabla del numero " num
	Para i = 1 Hasta 20 Hacer
		//Ej > 7 X 3 : 21
		Escribir num, " x ", i, ": " num * i
	FinPara
	
FinAlgoritmo
