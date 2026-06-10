//l) 1, 2, 4, 8, 16, 77, 145, 668, 1345,...

// 16 + 61 = 77 -> Ordenando de menor a mayor: 77
// 77 + 77 = 154 -> Ordenando de menor a mayor: 145
// 145 + 541 = 686 -> Ordenando de menor a mayor: 668
// 668 + 866 = 1534 -> Ordenando de menor a mayor: 1345

Algoritmo ejercicio40_l
	Definir n, i, j, k, termino, aux, digito, numInvertido, suma Como Entero;
	Definir conteoDigitos, nuevoTermino Como Entero;
	
	Escribir "Ingrese la cantidad de términos: ";
	Leer n;
	termino = 1;
	Para i = 1 Hasta n Con Paso 1 Hacer
		Escribir termino, " " Sin Saltar;
		// Invertir el número actual
		aux = termino;
		numInvertido = 0;
		Mientras aux > 0 Hacer
			digito = aux % 10;
			numInvertido = (numInvertido * 10) + digito;
			aux = Trunc(aux / 10);
		FinMientras
		
		// Realizamos la suma del número original + su invertido
		suma = termino + numInvertido;
		
		// Ordenar los dígitos de la suma de menor a mayor
		nuevoTermino = 0;
		
		// Evaluamos la frecuencia de cada posible dígito (0 al 9)
		Para j = 0 Hasta 9 Con Paso 1 Hacer
			aux = suma;
			conteoDigitos = 0;
			
			// Contamos cuantas veces aparece el digito j en la suma
			Mientras aux > 0 Hacer
				Si (aux % 10) = j Entonces
					conteoDigitos = conteoDigitos + 1;
				FinSi
				aux = Trunc(aux / 10);
			FinMientras
			
			//Reconstruimos el número colocando los digitos en orden ascendente
			Para k = 1 Hasta conteoDigitos Con Paso 1 Hacer
				nuevoTermino = (nuevoTermino * 10) + j;
			FinPara
		FinPara
		// El termino toma el valor ordenado para la siguiente vuelta
		termino = nuevoTermino;		
	FinPara
	Escribir "";	
FinAlgoritmo
