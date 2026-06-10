//q) 1, 2, 3, 2, 1, 2, 3, 4, 2, 1,... 
// I = 1 letra 
// II = 2 letra 
// III = 3 letra 
// IV = 2 letra 
// V = 1 letra 
// VI = 2 letra 
// VII = 3 letra 
// VIII = 4 letra 
Algoritmo ejercicio40_q
	Definir i, n, u, d, letras_u, letras_d, letras_totales Como Entero;
	Escribir "Ingrese cuantos términos: ";
	Leer n;
	
	Para i = 1 Hasta n Con Paso 1 Hacer
		letras_totales = 0;
		letras_u = 0;
		letras_d = 0;
		
		d = trunc(i / 10);
		u = i % 10;
		
		// Evaluamos las unidades romanas (0 al 9)
		Segun u Hacer
            0: letras_u <- 0; // No aporta letras
            1: letras_u <- 1; // "I"
            2: letras_u <- 2; // "II"
            3: letras_u <- 3; // "III"
            4: letras_u <- 2; // "IV"
            5: letras_u <- 1; // "V"
            6: letras_u <- 2; // "VI"
            7: letras_u <- 3; // "VII"
            8: letras_u <- 4; // "VIII"
            9: letras_u <- 2; // "IX"
        FinSegun
		
		// Evaluamos las decenas romadas (10 al 50)
		Segun d Hacer
            0: letras_d <- 0; // No aporta letras (menores a 10)
            1: letras_d <- 1; // "X" (10 al 19)
            2: letras_d <- 2; // "XX" (20 al 29)
            3: letras_d <- 3; // "XXX" (30 al 39)
            4: letras_d <- 2; // "XL" (40 al 49)
            5: letras_d <- 1; // "L" (Termino 50)
        FinSegun
		
		// Sumamos los caracteres totales del número romano
		letras_totales = letras_d + letras_u;
		
		// Mostramos el resultado
		Escribir letras_totales, " " Sin Saltar;		
	FinPara
	Escribir "";
FinAlgoritmo
