//h) 4, 6, 9, 10, 14, 15, 21, 22, 25 ... n
// Números conococidos como biprimos
// 2 x 2 = 4
//   4  | 2
//   2 | 2
//   1
// 2 x 3 = 6
// 3 x 3 = 9
// 2 x 11 = 22
//8 4 2 1 (2x2x2)

Algoritmo ejercicio40_h
	Definir n, i, ter, aux, divisor, contFac Como Entero;
	Escribir "Ingrese la cantidad de términos: ";
	Leer n;
	ter = 1;
	Para i = 1 Hasta n Con Paso 1 Hacer
		contFac = 0;
		// Ciclo para encontrar un número que tenga exactamente 2 factores primos
		Mientras contFac <> 2 Hacer
			ter = ter + 1;
			aux = ter;
			contFac = 0;
			divisor = 2;
			// Proceso de descomposición en factores primos
			Mientras aux > 1 Hacer
				Si aux % divisor = 0 Entonces
					contFac = contFac + 1;
					aux = Trunc(aux / divisor);
				SiNo
					divisor = divisor + 1;
				FinSi
			FinMientras
		FinMientras
		
		// Mostrar el número que tiene solo 2 factores primos
		Escribir ter, " " Sin Saltar;		
	FinPara
	Escribir "";
FinAlgoritmo
