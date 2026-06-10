//p) 1, 0, 5, 4, 14, 40, 16, 17,...
// uno = 3 letras
// cero = 4 letras
// cinco = 5 letras
// cuatro = 6 letras
// catorce = 7 letras
// cuarenta = 8 letras

Algoritmo ejercicio40_p
	Definir i, n_deseados, longitud_objetivo, candidato Como Entero;
    Definir u, d, c, letras_totales, letras_u, letras_d, letras_c Como Entero;
    Definir encontrado Como Logico;
    
    Escribir "Ingrese cuantos terminos de la serie desea generar:";
    Leer n_deseados;
    
    // Ciclo principal que controla la posición del término 'i'
    Para i <- 1 Hasta n_deseados Hacer
        longitud_objetivo <- i + 2; // El término 1 busca 3 letras, el 2 busca 4, etc.
        candidato <- 0;
        encontrado <- Falso;
        
        // Bucle secuencial para evaluar números hacia arriba hasta hallar el correcto
        Mientras NO encontrado Hacer
            letras_totales <- 0;            
            // Descomposición matemática del número candidato actual
            c <- Trunc(candidato / 100);
            d <- Trunc((candidato Mod 100) / 10);
            u <- candidato Mod 10;            
            // --- CÁLCULO SECUENCIAL AUTOMÁTICO DE LETRAS ---
            Si candidato < 10 Entonces
                // Unidades puras (0 al 9)
                Segun candidato Hacer
                    0: letras_totales <- 4; // "cero"
                    1, 2: letras_totales <- 3; // "uno", "dos"
                    3, 6, 8: letras_totales <- 4; // "tres", "seis", "ocho"
                    5, 7, 9: letras_totales <- 5; // "cinco", "siete", "nueve"
                    4: letras_totales <- 6; // "cuatro"
                FinSegun
            Sino
                Si candidato >= 10 Y candidato <= 15 Entonces
                    // Casos especiales compactos (10 al 15)
                    Segun candidato Hacer
                        10, 11, 12: letras_totales <- 4; // "diez", "once", "doce"
                        13, 15: letras_totales <- 5; // "trece", "quince"
                        14: letras_totales <- 7; // "catorce"
                    FinSegun
                Sino
                    // Números compuestos complejos (mayores a 15)
                    letras_u <- 0;
                    letras_d <- 0;
                    letras_c <- 0;                    
                    // 1. Contar letras de la unidad final
                    Segun u Hacer
                        1, 2: letras_u <- 3; // "...uno", "...dos"
                        3, 6, 8: letras_u <- 4; // "...tres", "...seis", "...ocho"
                        5, 7, 9: letras_u <- 5; // "...cinco", "...siete", "...nueve"
                        4: letras_u <- 6; // "...cuatro"
                    FinSegun                    
                    // 2. Contar letras de la decena base
                    Segun d Hacer
                        1: letras_d <- 5; // "dieci..." (para 16 al 19)
                        2: letras_d <- 6; // "veinte" o "veinti..." 
                        3: letras_d <- 7; // "treinta"
                        4: letras_d <- 8; // "cuarenta"
                        5: letras_d <- 9; // "cincuenta"
                        6, 9: letras_d <- 7; // "sesenta", "noventa"
                        7, 8: letras_d <- 8; // "setenta", "ochenta"
                    FinSegun                    
                    // 3. Contar letras de la centena base (necesario para avanzar a 50 términos)
                    Segun c Hacer
                        1: Si d == 0 Y u == 0 
								Entonces letras_c <- 4; Sino letras_c <- 6; FinSi // "cien" o "ciento"
							2, 3, 4, 6, 8: letras_c <- 11; // "doscientos", "trescientos"...
							5, 7: letras_c <- 10; // "quinientos", "setecientos"
							9: letras_c <- 12; // "novecientos"
						FinSegun						
						// Sumamos los bloques de centenas y decenas calculados
						letras_totales <- letras_c + letras_d;
						
						// Si la decena es mayor o igual a 3 y tiene unidad, se suma el conector " y " (3 letras)
						Si d >= 3 Y u <> 0 Entonces
							letras_totales <- letras_totales + 3;
						FinSi
						
						// Sumamos la unidad final si el número no termina en cero
						Si u <> 0 Entonces
							letras_totales <- letras_totales + letras_u;
						FinSi
					FinSi
				FinSi
				// --- FIN DEL CÁLCULO DE LETRAS ---
				
				// Si el candidato tiene exactamente las letras requeridas por la posición
				Si letras_totales == longitud_objetivo Entonces
					Escribir candidato, " " Sin Saltar;
					encontrado <- Verdadero; // Salta al siguiente término de la serie
				Sino
					candidato <- candidato + 1; // Evaluamos el siguiente número entero
				FinSi
				
				// Control preventivo de fin de rango matemático de 3 cifras
				Si candidato > 999 Entonces
					encontrado <- Verdadero;
					i <- n_deseados + 1;
				FinSi
			FinMientras
			
		FinPara
		Escribir " ";
FinAlgoritmo
