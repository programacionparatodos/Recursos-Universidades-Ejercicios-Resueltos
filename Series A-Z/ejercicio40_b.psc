//b) 10, 25, 30, 45 ... n
//   1   2   3   4
// 10 + 15 = 25		impar
// 25 + 5 = 30		par 
// 30 + 15 = 45		impar
// 45 + 5 = 50		par 
// 1 / 2 = 0     1 % 2 = 1       4 / 2 = 2    4 % 2 = 0
//par +5 ; impar +15
Algoritmo ejercicio40_b
	Definir n, i, ter Como Entero;
	Escribir "Ingrese la cantidad de terminos a generar: ";
	Leer n;
	ter = 10;
	Para i = 1 Hasta n Con Paso 1 Hacer
		Escribir ter, " " Sin Saltar;
		//Si el índice es impar sumamos 15, si es par sumamos 5
		Si i % 2 <> 0 Entonces
			ter = ter + 15; // i: impar
		SiNo
			ter = ter + 5; // i: par
		FinSi
	FinPara
	Escribir "";
FinAlgoritmo
