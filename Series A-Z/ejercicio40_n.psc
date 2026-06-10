//n) 31, 41, 59, 53, 89, 79,... 
// PI: 31 41 59 2 6 53 5 89 79 3 23 84626433832795
// Si la pareja actual ES PRIMO: lo mostramos y avanzamos 2 posiciones
// Si la pareja actual NO ES PRIMO: lo descartamosy avanzamos 1 posición

Algoritmo ejercicio40_n
	Definir n, i, j, pos, termino, divisores, fuePrimo Como Entero;
	Definir digitosPi Como Cadena;
	
	Escribir "Ingrese la cantidad de términos a generar: ";
	Leer n;
	
	digitosPi = "31415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679";
	pos = 0;
	
	Para i = 1 Hasta n Con Paso 1 Hacer
		fuePrimo = 0;
		Mientras fuePrimo = 0 Hacer
			termino = ConvertirANumero(Subcadena(digitosPi, pos, pos + 1));
			
			//Verificamos si el termino actual es primo contando la cantidad de divisores
			divisores = 0;
			Para j = 1 Hasta  termino Con Paso 1 Hacer
				Si termino % j = 0 Entonces
					divisores = divisores + 1;
				FinSi
			FinPara
			
			// Confirmamos si el término actual fue primo o no
			Si divisores = 2 Entonces
				fuePrimo = 1; // Encontró un número primo para mostrar
				pos = pos + 2; // Si es primo, avanza 2 posiciones
			SiNo
				pos = pos + 1; // Si no es primo, solo avanza 1 posición
			FinSi
		FinMientras
		Escribir termino, " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
