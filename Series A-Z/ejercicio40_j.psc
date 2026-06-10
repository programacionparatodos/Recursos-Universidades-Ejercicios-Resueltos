//j) 1, 1, 2, 4, 8, 16, 23, 28, 38, 49, ... n 
//   1  2  3  4  5   6   7   8  9   10
//      a  t
//         a  t
// Término 1: 1 (Valor fijo)
// Término 2: 1 (Valor fijo)
// Término 3: Anterior (1) + Dígitos de 1 (1) = 1 + 1 = 2
// Término 4: Anterior (2) + Dígitos de 2 (2) = 2 + 2 = 4
// Término 5: Anterior (4) + Dígitos de 4 (4) = 4 + 4 = 8
// Término 6: Anterior (8) + Dígitos de 8 (8) = 8 + 8 = 16
// Término 7: Anterior (16) + Dígitos de 16 (1+6=7) = 16 + 7 = 23
// Término 8: Anterior (23) + Dígitos de 23 (2+3=5) = 23 + 5 = 28
Algoritmo ejercicio40_j
	Definir n, i, termino, anterior, aux, digito, sumaDigitos Como Entero;
	Escribir "Ingrese la cantidad de términos: ";
	Leer n;
	anterior = 1;
	termino = 1;
	
	Para i = 1 Hasta n Con Paso 1 Hacer
		Si i = 1 Entonces
			Escribir 1, " " Sin Saltar;
		SiNo
			Si i = 2 Entonces
				Escribir 1, " " Sin Saltar;
			SiNo
				// Descomponemos el término anterior para sumar sus dígitos
				aux = anterior;
				sumaDigitos = 0;
				Mientras aux > 0 Hacer
					digito = aux % 10;
					sumaDigitos = sumaDigitos + digito;
					aux = Trunc(aux / 10);
				FinMientras
				
				// El nuevo término es el anterior más la suma de los dígitos del anterior
				termino = anterior + sumaDigitos;
				Escribir termino, " " Sin Saltar;
				anterior = termino; // Actualizamos para la siguiente vuelta				
			FinSi
		FinSi
	FinPara
	Escribir "";
FinAlgoritmo
