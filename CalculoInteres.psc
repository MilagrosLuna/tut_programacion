//Cálculo de Interés Simple
//Solicita el **capital inicial** y el **tiempo**, y calcula el interés simple con una **tasa fija precargada**.  
//Fórmula usada: interés = capital _ tasa _ tiempo

Algoritmo CalculoInteresSimple
    Definir capital, tiempo, tasa, interes Como Real
	
    // Tasa fija precargada (por ejemplo 5% anual)
    tasa = 0.05
	
    // Pedir capital y validar que sea positivo
    Repetir
        Escribir "Ingrese el capital inicial (valor positivo):"
        Leer capital
        Si capital <= 0 Entonces
            Escribir "Error: El capital debe ser un número positivo mayor a cero."
        FinSi
    Hasta Que capital > 0
	
    // Pedir tiempo y validar que sea positivo
    Repetir
        Escribir "Ingrese el tiempo en años (valor positivo):"
        Leer tiempo
        Si tiempo <= 0 Entonces
            Escribir "Error: El tiempo debe ser un número positivo mayor a cero."
        FinSi
    Hasta Que tiempo > 0
	
    // Calcular interés simple
    interes = capital * tasa * tiempo
	
    Escribir ""
    Escribir "Resumen del cálculo:"
    Escribir "Capital inicial: $", capital
    Escribir "Tasa fija anual: ", tasa * 100, "%"
    Escribir "Tiempo: ", tiempo, " años"
    Escribir "Interés simple generado: $", interes
    Escribir "Monto total (capital + interés): $", capital + interes
FinAlgoritmo
