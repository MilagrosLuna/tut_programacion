//C�lculo de Inter�s Simple
//Solicita el **capital inicial** y el **tiempo**, y calcula el inter�s simple con una **tasa fija precargada**.  
//F�rmula usada: inter�s = capital _ tasa _ tiempo

Algoritmo CalculoInteresSimple
    Definir capital, tiempo, tasa, interes Como Real
	
    // Tasa fija precargada (por ejemplo 5% anual)
    tasa = 0.05
	
    // Pedir capital y validar que sea positivo
    Repetir
        Escribir "Ingrese el capital inicial (valor positivo):"
        Leer capital
        Si capital <= 0 Entonces
            Escribir "Error: El capital debe ser un n�mero positivo mayor a cero."
        FinSi
    Hasta Que capital > 0
	
    // Pedir tiempo y validar que sea positivo
    Repetir
        Escribir "Ingrese el tiempo en a�os (valor positivo):"
        Leer tiempo
        Si tiempo <= 0 Entonces
            Escribir "Error: El tiempo debe ser un n�mero positivo mayor a cero."
        FinSi
    Hasta Que tiempo > 0
	
    // Calcular inter�s simple
    interes = capital * tasa * tiempo
	
    Escribir ""
    Escribir "Resumen del c�lculo:"
    Escribir "Capital inicial: $", capital
    Escribir "Tasa fija anual: ", tasa * 100, "%"
    Escribir "Tiempo: ", tiempo, " a�os"
    Escribir "Inter�s simple generado: $", interes
    Escribir "Monto total (capital + inter�s): $", capital + interes
FinAlgoritmo
