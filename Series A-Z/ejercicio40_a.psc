//a) 19, 21, 23, 25 ... n
// 19 + 2 = 21
// 21 + 2 = 23
// 23 + 2 = 25
// 25 + 2 = 27
Algoritmo ejercicio40_a
	Definir n, i, ter Como Entero;
	Escribir "Ingrese la cantidad de terminos: ";
	Leer n;
	ter = 19;
	Para i = 1 Hasta n Con Paso 1 Hacer
		Escribir ter, " " Sin Saltar;
		ter = ter + 2; // Incremento constante: +2
	FinPara
	Escribir "";
FinAlgoritmo
