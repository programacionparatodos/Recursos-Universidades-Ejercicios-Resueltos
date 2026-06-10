//w) 1, 2, 3, 3, 2, 3, 4, 5,... 
// I = 1 línea
// II = 2 líneas
// III = 3 líneas
// IV =  3 líneas

Algoritmo ejercicio40_w
	Definir i, n_deseados, m, c, d, u, trazos_u, trazos_d, trazos_c, trazos_m, total_trazos Como Entero;
    
    Escribir "Ingrese cuantos terminos de la serie desea generar:";
    Leer n_deseados;

    // El ciclo representa el número decimal evaluado secuencialmente (1, 2, 3...)
    Para i <- 1 Hasta n_deseados Hacer
        total_trazos <- 0;
        
        // Descomposición matemática del índice actual
        m <- Trunc(i / 1000);
        c <- Trunc((i Mod 1000) / 100);
        d <- Trunc((i Mod 100) / 10);
        u <- i Mod 10;
        
        // 1. Contar trazos de las Unidades (I, V)
        Segun u Hacer
            0: trazos_u <- 0;
            1: trazos_u <- 1; // "I" -> 1
            2: trazos_u <- 2; // "II" -> 1+1
            3: trazos_u <- 3; // "III" -> 1+1+1
            4: trazos_u <- 3; // "IV" -> 1+2
            5: trazos_u <- 2; // "V" -> 2
            6: trazos_u <- 3; // "VI" -> 2+1
            7: trazos_u <- 4; // "VII" -> 2+1+1
            8: trazos_u <- 5; // "VIII" -> 2+1+1+1
            9: trazos_u <- 3; // "IX" -> 1+2
        FinSegun
        
        // 2. Contar trazos de las Decenas (X, L)
        Segun d Hacer
            0: trazos_d <- 0;
            1: trazos_d <- 2; // "X" -> 2
            2: trazos_d <- 4; // "XX" -> 2+2
            3: trazos_d <- 6; // "XXX" -> 2+2+2
            4: trazos_d <- 4; // "XL" -> 2+2
            5: trazos_d <- 2; // "L" -> 2
            6: trazos_d <- 4; // "LX" -> 2+2
            7: trazos_d <- 6; // "LXX" -> 2+2+2
            8: trazos_d <- 8; // "LXXX" -> 2+2+2+2
            9: trazos_d <- 4; // "XC" -> 2+2
        FinSegun
        
        // 3. Contar trazos de las Centenas (C, D)
        Segun c Hacer
            0: trazos_c <- 0;
            1: trazos_c <- 2; // "C" -> 2
            2: trazos_c <- 4; // "CC" -> 2+2
            3: trazos_c <- 6; // "CCC" -> 2+2+2
            4: trazos_c <- 5; // "CD" -> 2+3
            5: trazos_c <- 3; // "D" -> 3
            6: trazos_c <- 5; // "DC" -> 3+2
            7: trazos_c <- 7; // "DCC" -> 3+2+2
            8: trazos_c <- 9; // "DCCC" -> 3+2+2+2
            9: trazos_c <- 6; // "CM" -> 2+4
        FinSegun
        
        // 4. Contar trazos de los Millares (M)
        Segun m Hacer
            0: trazos_m <- 0;
            1: trazos_m <- 4; // "M" -> 4
            2: trazos_m <- 8; // "MM" -> 4+4
            3: trazos_m <- 12; // "MMM" -> 4+4+4
        FinSegun
        
        // Suma total de trazos para el número romano actual
        total_trazos <- trazos_m + trazos_c + trazos_d + trazos_u;
        
		Escribir  total_trazos, " " Sin Saltar;
    FinPara
	Escribir ""; 
FinAlgoritmo
