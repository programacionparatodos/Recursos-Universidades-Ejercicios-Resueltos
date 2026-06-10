//x) 20, 1, 18, 4, 13, 6, 10,... 

//            | 0  1 | 2  3 | 4  5 | 6  7 | 8  9 | ... | 38 39 |
//           |  2 0 |  0 1 |  1 8 |  0 4 |  1 3 | ... |  0  5 |
//    Valor:    20     01     18     04     13   ...     05
//
// 3. LA FÓRMULA DE EXTRACCIÓN:
//    Para cualquier posición virtual 'pos' (de 0 a 19):
//    - El carácter inicial del número está en: pos * 2
//    - El carácter final del número está en: (pos * 2) + 1
//
//    Ejemplo para la posición virtual 2 (tercer número, el 18):
//    - Inicio = 2 * 2 = 4
//    - Fin    = (2 * 2) + 1 = 5
//    - SubCadena extrae los índices 4 y 5, que corresponden a "18".
Algoritmo ejercicio40_x
	Definir n, i, pos Como Entero;
	Definir mapa, subSecuencia Como Texto;
	Definir numeroGenerado Como Entero;
	
	mapa <- "2001180413061015021703190716081114091205";
	
	Escribir "Ingrese la cantidad de terminos a generar:";
	Leer n;
	
	Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
		pos <- (i MOD 20);
		
		// Usamos SubCadena con (texto, desde, hasta) en Base 0
		// Para pos = 0: va desde 0 hasta 1 (extrae los primeros 2 caracteres)
		subSecuencia <- SubCadena(mapa, pos * 2, (pos * 2) + 1);
		
		numeroGenerado <- ConvertirANumero(subSecuencia);
		
		Si i < n - 1 Entonces
			Escribir Sin Saltar numeroGenerado, ", ";
		Sino
			Escribir numeroGenerado;
		FinSi
	FinPara
	
FinAlgoritmo
