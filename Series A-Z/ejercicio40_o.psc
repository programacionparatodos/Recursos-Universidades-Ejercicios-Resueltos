//o) 3, 3, 4, 6, 5, 4, 5, 4, 5, 4,...
// 1 (UNO) -> 3 letras
// 2 (DOS) -> 3 letras
// 3 (TRES) -> 4 letras
// 4 (CUATRO) -> 6 letras
// 5 (CINCO) -> 5 letras
// 6 (SEIS) -> 4 letras
// 7 (SIETE) -> 5 letras
// 8 (OCHO) -> 4 letras
// 9 (NUEVE) -> 5 letras
// 10 (DIEZ) -> 4 letras

Algoritmo ejercicio40_o
	Definir n, i, termino Como Entero;
	Escribir "Ingrese la cantidad de términos a generar (máx. 50): ";
	Leer n;
	Para i = 1 Hasta n Con Paso 1 Hacer
		Segun i Hacer
			1:  termino <- 3; // uno
            2:  termino <- 3; // dos
            3:  termino <- 4; // tres
            4:  termino <- 6; // cuatro
            5:  termino <- 5; // cinco
            6:  termino <- 4; // seis
            7:  termino <- 5; // siete
            8:  termino <- 4; // ocho
            9:  termino <- 5; // nueve
            10: termino <- 4; // diez
            11: termino <- 4; // once
            12: termino <- 4; // doce
            13: termino <- 5; // trece
            14: termino <- 7; // catorce
            15: termino <- 6; // quince
            16: termino <- 9; // dieciseis
            17: termino <- 10; // diecisiete
            18: termino <- 8; // dieciocho
            19: termino <- 9; // diecinueve
            20: termino <- 6; // veinte
            21: termino <- 9; // veintiuno
            22: termino <- 9; // veintidos
            23: termino <- 10; // veintitres
            24: termino <- 12; // veinticuatro
            25: termino <- 10; // veinticinco
            26: termino <- 9; // veintiseis
            27: termino <- 10; // veintisiete
            28: termino <- 9; // veintiocho
            29: termino <- 9; // veintinueve
            30: termino <- 7; // treinta
            31: termino <- 12; // treinta y uno
            32: termino <- 12; // treinta y dos
            33: termino <- 13; // treinta y tres
            34: termino <- 15; // treinta y cuatro
            35: termino <- 14; // treinta y cinco
            36: termino <- 13; // treinta y seis
            37: termino <- 14; // treinta y siete
            38: termino <- 13; // treinta y ocho
            39: termino <- 13; // treinta y nueve
            40: termino <- 10; // cuarenta
            41: termino <- 15; // cuarenta y uno
            42: termino <- 15; // cuarenta y dos
            43: termino <- 16; // cuarenta y tres
            44: termino <- 18; // cuarenta y cuatro
            45: termino <- 17; // cuarenta y cinco
            46: termino <- 16; // cuarenta y seis
            47: termino <- 17; // cuarenta y siete
            48: termino <- 16; // cuarenta y ocho
            49: termino <- 16; // cuarenta y nueve
            50: termino <- 11; // cincuenta
			De Otro Modo:
				termino = 0;
		FinSegun
		Escribir termino, " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
