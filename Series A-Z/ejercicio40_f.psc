//f) 1, 2, 4, 5, 8, 9, 10, 13, 16, 17, 20 ... n
//								1		3				 1			 3						 1			3
//		1, 		2, 		4, 		5, 		8, 		9, 		10, 		13, 		16, 		17, 		20
//					   2^2					   3^2							    4^2
Algoritmo ejercicio40_f
	Definir n, i, ter, num, op Como Entero;
	Escribir "Ingrese la cantidad de terminos a generar: ";
	Leer n;
	num = 2;
	op = 0;
	Para i = 1 Hasta n Con Paso 1 Hacer
		Si i = 1 Entonces
			ter = 1;
		SiNo
			Si i = 2 Entonces
				ter = 2;
			SiNo
				Si op = 0 Entonces
					ter = num * num; // sacamos el cuadrado
					num = num + 1;	 // actualizamos para el siguiente cuadrado
				FinSi
				Si op = 1 Entonces
					ter = ter + 1; // sumando + 1
				FinSi
				Si op = 2 Entonces
					ter = ter + 3; // sumando + 3
				FinSi
				op = op + 1;
				Si op > 2 Entonces
					op = 0;
				FinSi
			FinSi
		FinSi
		Escribir ter, " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
