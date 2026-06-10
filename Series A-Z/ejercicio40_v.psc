//v) 6, 2, 5, 5, 4, 5, 6, 3, 7,... 
// Genera automáticamente la serie de segmentos LED encendidos en un display.
// Evaluando: 0->6, 1->2, 2->5, 3->5, 4->4, 5->5, 6->6, 7->3, 8->7, 9->6.
// 0 -> Usa 6 segmentos (todos menos el del centro).
// 1 Usa 2 segmentos (los dos de la derecha).
// 2 ->Usa 5 segmentos.
// 3 ->Usa 5 segmentos.
// 4 ->Usa 4 segmentos.
// 5 ->Usa 5 segmentos.
// 6 ->Usa 6 segmentos.
// 7 ->Usa 3 segmentos (los tres de arriba y derecha).
// 8 ->Usa 7 segmentos (todos los LEDs encendidos).
// 9 ->Usa 6 segmentos (todos menos el inferior izquierdo).
Algoritmo ejercicio40_v
	Definir i, n, termino, temporal, digito, segmento_total Como Entero;
	Escribir "Ingrese cuantos términos desea generar: ";
	Leer n;
	Para i = 1 Hasta n Con Paso 1 Hacer
		termino = i - 1; // Comenzando desde el número 0
		segmento_total = 0;
		
		Si termino = 0 Entonces
			segmento_total = 6;
		SiNo
			temporal = termino;
			// Descomposición dígito por dígito
			Mientras temporal > 0 Hacer
				digito = temporal % 10;
				
				// Sumamos los segmentos correspondientes
				Segun digito Hacer
					0, 6, 9:
						segmento_total = segmento_total + 6;
					1: 
						segmento_total = segmento_total + 2;
					2, 3, 5: 
						segmento_total = segmento_total + 5;
					4: 
						segmento_total = segmento_total + 4;
					7: 
						segmento_total = segmento_total + 3;
					8: 
						segmento_total = segmento_total + 7;
				FinSegun
				temporal = trunc(temporal / 10);
			FinMientras
		FinSi
		Escribir segmento_total, " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
