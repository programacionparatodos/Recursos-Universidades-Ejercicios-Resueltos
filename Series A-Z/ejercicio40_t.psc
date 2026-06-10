//t) 0, 1, 11, 101, 111, 181, 1001,... 
// 1. Tener que ser caícúas
// 2. Sólo dígitos simétricos: 0, 1, 8
// 3. Tienen que empezar con el 1 (excepto el 0)

Algoritmo ejercicio40_t
	Definir n, terminos_encontrados, termino, copia_num, residuo Como Entero;
	Definir num_invertido, primer_digito Como Entero;
	Definir solo_digitos_validos Como Logico;
	
	Escribir "Ingrese cuantos términos desea generar: ";
	Leer n;
	
	terminos_encontrados = 0;
	termino = 0;
	
	Mientras terminos_encontrados < n Hacer
		copia_num = termino;
		num_invertido = 0;
		solo_digitos_validos = Verdadero;
		primer_digito = 0;
		
		Si termino = 0 Entonces
			num_invertido = 0;
			primer_digito = 0;
		SiNo
			// Descomposición y verficiación se dígitos
			Mientras copia_num > 0 Y solo_digitos_validos Hacer
				residuo = copia_num % 10;
				
				Si residuo <> 0 y residuo <> 1 y residuo <> 8 Entonces
					solo_digitos_validos = Falso;
				FinSi
				
				num_invertido = (num_invertido * 10) + residuo;
				primer_digito = residuo;
				copia_num = trunc(copia_num / 10);				
			FinMientras		
		FinSi
		Si solo_digitos_validos Y num_invertido = termino Y (termino = 0 o primer_digito = 1) Entonces
			terminos_encontrados = terminos_encontrados + 1;
		
			Escribir termino, " " Sin Saltar;
		FinSi
		termino = termino + 1;
	FinMientras
	Escribir "";
FinAlgoritmo
