//d) 1, 1, 2, 4, 7, 11, 18, 36, 65 ... n
//					2       1       2       1       2        1       2
//  0   1   0  | 	1, 		1, 		2, 		4, 		7, 		11, 	18, 	36, 	65      101
//  a   b   c    t=a+b+c
//		a   b		c	  t=b+c
//			a   	b		c	  t=b+c
//					a   	b   	c    t=a+b+c

Algoritmo ejercicio40_d
	Definir n, i, a, b, c, t, pos Como Entero;
	Definir sumar3 Como Logico;
	Escribir "Ingrese la cantidad de términos a generar: ";
	Leer n;
	a = 0;
	b = 1;
	c = 0;
	pos = 2;
	sumar3 = Verdadero;
	Para i = 1 Hasta n Con Paso 1 Hacer
		Si sumar3 = Verdadero Entonces
			t = a + b + c;
		SiNo
			t = b + c;
		FinSi
		pos = pos + 1;
		Escribir t, " " Sin Saltar;
		Si pos > 2 Entonces
			sumar3 = no sumar3;
			pos = 1;
		FinSi
		a = b;
		b = c;
		c = t;
	FinPara
	Escribir "";
FinAlgoritmo
