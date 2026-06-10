//m) 3, 2, 1, 7, 4, 1, 1, 8, 5, 2, 9,... 

// PI 		= 	31415926
// EULER 	= 	27182818
Algoritmo ejercicio40_m
	Definir n, i, digito, divisorPi, divisorE Como Entero;
	Definir pi_entero, euler_entero  Como Entero;
	
	Escribir "Ingrese la cantidad de términos: ";
	Leer n;
	pi_entero = 31415926;
	euler_entero = 27182818;
	
	// Divisores para extraer los dígitos (de izquierda a derecha)
	divisorPi = 10000000;
	divisorE = 10000000;
	
	Para i = 1 Hasta n Con Paso 1 Hacer
		// Si la posición es IMPAR, extraemos un dígito de pi_entero
		Si i % 2 <> 0 Entonces
			digito = trunc(pi_entero / divisorPi) % 10;
			divisorPi = trunc(divisorPi / 10);
		SiNo
			digito = trunc(euler_entero / divisorE) % 10;
			divisorE = trunc(divisorE / 10);
		FinSi
		Escribir digito, " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
