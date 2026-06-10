//z) 1, 5, 6, 9, 12, 14, 18, 19, 23, 26, 27,...

Algoritmo ejercicio40_z
	Definir n, contador, casilla, posRel Como Entero;
    Definir casillaOca, pasoOca, casillaCastigo, pasoCastigo Como Entero;
    Definir esOca, esPremio, esCastigo Como Logico;
    
    Escribir "Ingrese la cantidad de terminos (N) a generar:";
    Leer n;
     
    contador <- 0;
    casilla <- 1;
    
    Mientras contador < n Hacer
        // 1. Calcular la posición relativa dentro del tablero de 63 casillas
        posRel <- (casilla - 1) Mod 63 + 1;
        
        // 2. REGLA AUTOMÁTICA DE LAS OCAS (Reinicia cada 63 casillas)
        casillaOca <- 5;
        pasoOca <- 4;
        esOca <- Falso;
        
        Si posRel = 1 Entonces
            esOca <- Verdadero;
        Sino
            Mientras casillaOca <= 63 Hacer
                Si posRel = casillaOca Entonces
                    esOca <- Verdadero;
                FinSi;
                casillaOca <- casillaOca + pasoOca;
                Si pasoOca = 4 Entonces
                    pasoOca <- 5;
                Sino
                    pasoOca <- 4;
                FinSi;
            FinMientras;
        FinSi;
        
        // 3. REGLA AUTOMÁTICA DE LOS CASTIGOS (Reinicia cada 63 casillas)
        casillaCastigo <- 19;
        pasoCastigo <- 12;
        esCastigo <- Falso;
        
        Mientras casillaCastigo <= 58 Hacer
            Si posRel = casillaCastigo Entonces
                esCastigo <- Verdadero;
            FinSi;
            Si casillaCastigo = 52 Entonces
                pasoCastigo <- 6;
            FinSi;
            casillaCastigo <- casillaCastigo + pasoCastigo;
            pasoCastigo <- pasoCastigo - 1;
        FinMientras;
        
        // 4. REGLA AUTOMÁTICA DE LOS PREMIOS (Puentes y Dados)
        esPremio <- Falso;
        // Puentes en posiciones fijas del tablero (6 y 12)
        Si posRel = 6 O posRel = 12 Entonces
            esPremio <- Verdadero;
        FinSi;
        // Dados automáticos en la posición 26 y con salto cíclico de +27 (53)
        Si posRel = 26 O posRel = 53 Entonces
            esPremio <- Verdadero;
        FinSi;
        
        // 5. EVALUACIÓN FINAL DE LA CASILLA
        Si esOca O esCastigo O esPremio Entonces
            Escribir casilla, " " Sin Saltar;
            contador <- contador + 1;
        FinSi;
        
        // Avanzar a la siguiente casilla numérica absoluta
        casilla <- casilla + 1;
    FinMientras;
	Escribir "";
FinAlgoritmo
