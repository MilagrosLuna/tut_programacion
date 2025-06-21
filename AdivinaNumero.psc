//Adivina el Número
//Genera un número aleatorio entre **1 y 25** y permite al usuario adivinarlo, dando pistas si el intento es **muy alto, bajo o correcto**. Usa la función `Azar`.

Algoritmo AdivinaNumero
    Definir numeroSecreto, intento Como Entero
	
    // Generar número aleatorio entre 1 y 25
    numeroSecreto = Azar(25) + 1  // Azar(25) genera de 0 a 24, por eso sumamos 1
	
    Escribir "¡Adivina el número secreto entre 1 y 25!"
	
    Repetir
        Escribir "Ingrese su intento:"
        Leer intento
		
        Si intento < numeroSecreto Entonces
            Escribir "Demasiado bajo. Intenta nuevamente."
        Sino
            Si intento > numeroSecreto Entonces
                Escribir "Demasiado alto. Intenta nuevamente."
            Sino
                Escribir "¡Correcto! ¡Adivinaste el número!"
            FinSi
        FinSi
		
    Hasta Que intento = numeroSecreto
	
FinAlgoritmo
