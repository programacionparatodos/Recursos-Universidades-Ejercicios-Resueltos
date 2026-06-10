//c) 7, 14, 28, 56 ... n
//  7 * 2 = 14
// 14 * 2 = 28
// 28 * 2 = 56
// 56 * 2 = 112
// multiplicación constante x2

Algoritmo ejercicio40_c
	Definir n, i, ter Como Entero;
	Escribir "Ingrese la cantidad de terminos: ";
	Leer n;
	ter = 7;
	Para i = 1 Hasta n Con Paso 1 Hacer
		Escribir ter, " " Sin Saltar;
		ter = ter * 2; // Multiplicación constante x2
	FinPara
	Escribir "";
FinAlgoritmo
