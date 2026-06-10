//g) 2, 3, 5, 7, 11, 13, 14, 16, 17, 20 ... n
// Invertimos los números y si es primo lo vamos a mostrar
// 2 invertido -> 2
// 3 invertido -> 3
// 5 invertido -> 5
// 7 invertido -> 7
// 11 invertido -> 11
// 13 invertido -> 31
// 14 invertido -> 41
// 15 invertido -> 51  X   no es primo
// 16 invertido -> 61
// esPrimo cuando tiene solo 2 divisores

Algoritmo ejercicio40_g
	Definir n, i, num, aux, digito, numInv, j, esPrimo, divisores Como Entero;
	
	Escribir "Ingrese la cantidad de términos a generar: ";
	Leer n;
	num = 2;
	Para i = 1 Hasta n Con Paso 1 Hacer
		esPrimo = 0;
		Mientras esPrimo = 0 Hacer
			// Proceso para invertir el número
			aux = num;
			numInv = 0;
			Mientras aux > 0 Hacer
				digito = aux % 10;
				numInv = (numInv * 10) + digito;
				aux = Trunc(aux / 10);
			FinMientras
			
			// Comprobar si el número invertido es primo
			divisores = 0;
			Para j = 1 Hasta numInv Con Paso 1 Hacer
				Si numInv % j = 0 Entonces
					divisores = divisores + 1;
				FinSi
			FinPara
			
			// Si tiene solo 2 divisores entonces el número invertido es primo
			Si divisores = 2 Entonces
				esPrimo = 1; // Este término es válido
			SiNo
				num = num + 1; // seguir buscando el próximo número
			FinSi
		FinMientras
		
		// Mostramos el número original que cumple las condiciones
		Escribir num, " " Sin Saltar;
		num = num + 1;
	FinPara
	Escribir "";
FinAlgoritmo
