//u) 1, 2, 3, 5, 10, 19, 20, 30, 1000...
// I 
// II
// III
// V
// X
// XIX
// XX
// XXX
Algoritmo ejercicio40_u
	Definir m, c, d, u, candidato, terminos_encontrados, n_deseados Como Entero;
    Definir romano, romano_invertido, letra Como Caracter;
    Definir x, largo_texto Como Entero;
    Definir es_simetrico Como Logico;
    
    Escribir "Ingrese cuantos terminos de la serie desea generar:";
    Leer n_deseados;
       
    terminos_encontrados <- 0;
    
    // Cuatro ciclos anidados secuenciales para construir combinaciones decimales (0 a 3999)
    Para m <- 0 Hasta 3 Hacer
        Para c <- 0 Hasta 9 Hacer
            Para d <- 0 Hasta 9 Hacer
                Para u <- 0 Hasta 9 Hacer
                    
                    // Aseguramos procesar solo números mayores a cero y detenernos al llegar a N
                    Si (m <> 0 O c <> 0 O d <> 0 O u <> 0) Y terminos_encontrados < n_deseados Entonces
                        romano <- "";
                        
                        // --- 1. CONSTRUCCIÓN DEL NÚMERO ROMANO ---
                        Segun m Hacer
                            1: romano <- romano + "M";
                            2: romano <- romano + "MM";
                            3: romano <- romano + "MMM";
                        FinSegun
                        
                        Segun c Hacer
                            1: romano <- romano + "C"; 2: romano <- romano + "CC"; 3: romano <- romano + "CCC";
									4: romano <- romano + "CD"; 5: romano <- romano + "D"; 6: romano <- romano + "DC";
											7: romano <- romano + "DCC"; 8: romano <- romano + "DCCC"; 9: romano <- romano + "CM";
												FinSegun
												
												Segun d Hacer
													1: romano <- romano + "X"; 2: romano <- romano + "XX"; 3: romano <- romano + "XXX";
															4: romano <- romano + "XL"; 5: romano <- romano + "L"; 6: romano <- romano + "LX";
																	7: romano <- romano + "LXX"; 8: romano <- romano + "LXXX"; 9: romano <- romano + "XC";
																		FinSegun
																		
																		Segun u Hacer
																			1: romano <- romano + "I"; 2: romano <- romano + "II"; 3: romano <- romano + "III";
																					4: romano <- romano + "IV"; 5: romano <- romano + "V"; 6: romano <- romano + "VI";
																							7: romano <- romano + "VII"; 8: romano <- romano + "VIII"; 9: romano <- romano + "IX";
																								FinSegun
																								
																								// --- 2. CONTROL DE SIMETRÍA AXIAL (FILTRO DE LETRAS ASIMÉTRICAS) ---
																								es_simetrico <- Verdadero;
																								largo_texto <- Longitud(romano);
																								
																								// Recorremos el texto romano generado letra por letra
																								Para x <- 0 Hasta (largo_texto - 1) Hacer
																									letra <- Subcadena(romano, x, x);
																									// Si el número contiene C, D o L se marca como NO simétrico
																									Si letra == "C" O letra == "D" O letra == "L" Entonces
																										es_simetrico <- Falso;
																									FinSi
																								FinPara
																								
																								// Si falló el bucle por índice base 1 en PSeInt, aplicamos la alternativa segura
																								Si largo_texto > 0 Y Subcadena(romano, 0, 0) == "" Entonces
																									Para x <- 1 Hasta largo_texto Hacer
																										letra <- Subcadena(romano, x, x);
																										Si letra == "C" O letra == "D" O letra == "L" Entonces
																											es_simetrico <- Falso;
																										FinSi
																									FinPara
																								FinSi
																								
																								// --- 3. VERIFICACIÓN DE CAPICÚA ---
																								// Solo si pasó el filtro de simetría axial, comprobamos si es capicúa
																								Si es_simetrico Entonces
																									romano_invertido <- "";
																									
																									// Invertimos la cadena de texto de atrás hacia adelante
																									Para x <- (largo_texto - 1) Hasta 0 Con Paso -1 Hacer
																										romano_invertido <- romano_invertido + Subcadena(romano, x, x);
																									FinPara
																									
																									Si Longitud(romano_invertido) == 0 Entonces
																										Para x <- largo_texto Hasta 1 Con Paso -1 Hacer
																											romano_invertido <- romano_invertido + Subcadena(romano, x, x);
																										FinPara
																									FinSi
																									
																									// Si el texto original coincide con su reverso, es un término de la serie
																									Si romano == romano_invertido Entonces
																										candidato <- (m * 1000) + (c * 100) + (d * 10) + u;
																										terminos_encontrados <- terminos_encontrados + 1;
																										
																										// Impresión limpia en una sola fila horizontal
																										Si terminos_encontrados == n_deseados Entonces
																											Escribir candidato; // Último número sin coma
																										Sino
																											Escribir Sin Saltar candidato, ", ";
																										FinSi
																									FinSi
																								FinSi
																							FinSi
																							
																						FinPara
																					FinPara
																				FinPara
																			FinPara
																			
    Escribir ""; 
FinAlgoritmo
