//Adivina el N�mero
//Genera un n�mero aleatorio entre **1 y 25** y permite al usuario adivinarlo, dando pistas si el intento es **muy alto, bajo o correcto**. Usa la funci�n `Azar`.

Algoritmo AdivinaNumero
    Definir numeroSecreto, intento Como Entero
	
    // Generar n�mero aleatorio entre 1 y 25
    numeroSecreto = Azar(25) + 1  // Azar(25) genera de 0 a 24, por eso sumamos 1
	
    Escribir "�Adivina el n�mero secreto entre 1 y 25!"
	
    Repetir
        Escribir "Ingrese su intento:"
        Leer intento
		
        Si intento < numeroSecreto Entonces
            Escribir "Demasiado bajo. Intenta nuevamente."
        Sino
            Si intento > numeroSecreto Entonces
                Escribir "Demasiado alto. Intenta nuevamente."
            Sino
                Escribir "�Correcto! �Adivinaste el n�mero!"
            FinSi
        FinSi
		
    Hasta Que intento = numeroSecreto
	
FinAlgoritmo
