//s) 0, 1, 8, 11, 69, 88, 96, 101,...  
Algoritmo ejercicio40_s 
	Definir n, terminos_encontrados, termino, aux, residuo Como Entero;
	Definir numInvertido, digito_inverso Como Entero; 
	Definir es_valido Como Logico;
	
	Escribir "Ingrese cunatos términos desea: ";
	Leer n;
	
	terminos_encontrados = 0;
	termino = 0;
	
	Mientras terminos_encontrados < n Hacer
		aux = termino;
		numInvertido = 0;
		es_valido = Verdadero;
		
		Si termino = 0 Entonces
			numInvertido = 0;
		SiNo
			Mientras aux > 0 Y es_valido Hacer
				residuo = aux % 10;
				
				Segun residuo Hacer
					0, 1, 8:
						digito_inverso = residuo;
					6: 
						digito_inverso = 9;
					9: 
						digito_inverso = 6;
					De Otro Modo:
						es_valido = Falso;
				FinSegun
				numInvertido = (numInvertido * 10) + digito_inverso;
				aux = trunc(aux / 10);
			FinMientras
		FinSi
		// Si el número original y su versión rotada 180 coinciden
		Si es_valido Y numInvertido = termino Entonces
			terminos_encontrados = terminos_encontrados + 1;
			Escribir termino, " " Sin Saltar;
		FinSi
		termino = termino + 1;
	FinMientras
	Escribir "";
FinAlgoritmo
