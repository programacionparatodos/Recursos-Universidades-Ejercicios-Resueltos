//k) 1, 1, 2, 4, 8, 7, 5, 10, 11, 13, 8,... n
// Serie de potencias de 2 (2, 4, 8, 16, 32, 64, 128, 256, 512, .. )
// 2^1 = 2 -> 2
// 2^2 = 4 -> 4
// 2^3 = 8 -> 8
// 2^4 = 16 -> 1 + 6 = 7
// 2^5 = 32 -> 3 + 2 = 5
// 2^6 = 64 -> 6 + 4 = 10
// 2^7 = 128 -> 1 + 2 + 8 = 11
// 2^8 = 256 -> 2 + 5 + 6 = 13
// 2^9 = 512 -> 5 + 1 + 2 = 8
// 2^10 = 1024 -> 1 + 0 + 2 + 4 = 7
Algoritmo ejercicio40_k
	Definir n, i, potencia, aux, digito, sumaDigitos Como Entero;
	Escribir "Ingrese la cantidad de términos a generar: ";
	Leer n;
	potencia = 1;
	Para i = 1 Hasta n Con Paso 1 Hacer
		Si i = 1 Entonces
			Escribir 1, " " Sin Saltar;
		SiNo
			Si i = 2 Entonces
				Escribir 1, " " Sin Saltar;
				potencia = 2; 
			SiNo
				// Proceso para obtener la suma de sus dígitos
				aux = potencia;
				sumaDigitos = 0;
				Mientras aux > 0 Hacer
					digito = aux % 10;
					sumaDigitos = sumaDigitos + digito;
					aux = Trunc(aux / 10);
				FinMientras
				
				Escribir sumaDigitos, " " Sin Saltar;
				
				// Calculamos la siguiente potencia de 2 para la siguiente vuelta
				potencia = potencia * 2;
			FinSi
		FinSi
	FinPara
	Escribir "";
FinAlgoritmo
