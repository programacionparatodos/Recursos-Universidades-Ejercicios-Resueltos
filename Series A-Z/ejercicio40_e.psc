//e) 1, 4, 9, 61, 52, 63, 94 ...  n
//   1  2  3  4   5   6   7  ...  n
// 1 ^ 2 = 1   	->   invertido: 1
// 2 ^ 2 = 4   	->   invertido: 4
// 3 ^ 2 = 9   	->   invertido: 9
// 4 ^ 2 = 16   ->   invertido: 61
// 5 ^ 2 = 25  	->   invertido: 52
// 6 ^ 2 = 36  	->   invertido: 63
// 7 ^ 2 = 49  	->   invertido: 94

Algoritmo ejercicio40_e
	Definir n, i, cuadrado, aux, digito, numInv Como Entero;
	Escribir "Ingrese la cantidad de términos: ";
	Leer n;
	Para i = 1 Hasta n Con Paso 1 Hacer
		cuadrado = i * i;
		// Proceso para invertir un número
		aux = cuadrado;
		numInv = 0;
		Mientras aux > 0 Hacer
			digito = aux % 10; // sacamos el último dígito
			numInv = (numInv * 10) + digito;
			aux = Trunc(aux / 10); // eliminamos el último dígito
		FinMientras
		Escribir numInv, " " Sin Saltar;		
	FinPara
	Escribir "";
FinAlgoritmo
