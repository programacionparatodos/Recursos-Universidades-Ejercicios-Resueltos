//r) 1, 0, 0, 0, 0, 0, 1, 0, 2, 1, 1, 0,...
// 0: 1 círculo
// 1: 0 círculos
// 6: 1 círculo
// 8: 2 círculos
// 9: 1 círculo
Algoritmo ejercicio40_r
	Definir i, n, termino, temp, digito, circulos_total Como Entero;
	Escribir "Ingrese cuántos términos desea generar: ";
	Leer n;
	
	Para i = 1 Hasta n Con Paso 1 Hacer
		termino = i - 1; // Empezar desde el número 0
		circulos_total = 0;
		
		Si termino = 0 Entonces
			circulos_total = 1;
		SiNo
			temp = termino;
			Mientras temp > 0 Hacer
				digito = temp % 10; // Extrae el último dígito
				
				Segun digito Hacer
					0, 6, 9:
						circulos_total = circulos_total + 1;
					8: 
						circulos_total = circulos_total + 2;
				FinSegun
				
				temp = trunc(temp / 10); // Elimina el último dígito
			FinMientras
		FinSi
		Escribir circulos_total, " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
