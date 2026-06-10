//i) 1, 11, 21, 1211, 111221, 312211,...
// 1 -> Vemos un uno -> 11
// 11 -> Vemos dos unos -> 21
// 21 -> Vemos un dos y un uno -> 1211
// 1211 -> Vemos un uno, un dos y dos unos -> 111221
// 111221 -> Vemos tres unos, dos does y un uno -> 312211

Algoritmo ejercicio40_i
	Definir n, i, j, contador Como Entero;
	Definir actual_cad, nueva_cad Como Cadena;
	
	Escribir "Ingrese la cantidad de términos a generar: ";
	Leer n;
	actual_cad = "1"; // Primer término inicial
	Para i = 1 Hasta n Con Paso 1 Hacer
		Escribir actual_cad, " " Sin Saltar;
		
		nueva_cad = "";
		contador = 1;
		
		// Ciclo para recorrer la cadena de texto (caracter por caracter)
		Para j = 0 Hasta Longitud(actual_cad) - 1 Con Paso 1 Hacer
			// Comparamos el dígito actual con el siguiente
			Si j < Longitud(actual_cad) - 1 Entonces
				Si Subcadena(actual_cad, j, j) = Subcadena(actual_cad, j + 1, j + 1) Entonces
					contador = contador + 1;
				SiNo
					nueva_cad = nueva_cad + ConvertirATexto(contador) + Subcadena(actual_cad, j, j);
					contador = 1;
				FinSi
			SiNo
				// Para el último dígito del texto
				nueva_cad = nueva_cad + ConvertirATexto(contador) + Subcadena(actual_cad, j, j);
			FinSi
		FinPara
		actual_cad = nueva_cad; // Guardamos el contenido para la siguiente vuelta
	FinPara
	Escribir "";
FinAlgoritmo
