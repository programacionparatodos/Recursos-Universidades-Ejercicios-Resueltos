//y) 0, 32, 15, 19, 4, 21, 2, 25, 17,... 
Algoritmo ejercicio40_y
	Definir i, n_deseados, posicion_ciclo, numero_salida Como Entero;
    Definir mapa_ruleta, bloque Como Caracter;
    
    // Cadena compacta que almacena los 37 números de la ruleta en formato de 2 caracteres
    // "00" representa al 0, "32" al 32, "04" al 4, etc.
    mapa_ruleta <- "00321519042102251734062713361130082310052416330120143109221829072812350326";
    
    Escribir "Ingrese cuantos terminos de la serie desea generar:";
    Leer n_deseados;
        
    // Bucle secuencial directo en una sola fila
    Para i <- 1 Hasta n_deseados Hacer
        // El operador Mod 37 asegura que al pasar el número 36 vuelva a empezar desde el 0
        posicion_ciclo <- (i - 1) Mod 37;
        
        // Extraemos matemáticamente la pareja de caracteres correspondiente en base 0/1
        bloque <- Subcadena(mapa_ruleta, (posicion_ciclo * 2) + 1, (posicion_ciclo * 2) + 2);
        
        // Si el perfil de PSeInt es base 0, aplicamos el desfase seguro de lectura
        Si Subcadena(mapa_ruleta, 0, 0) <> "" Entonces
            bloque <- Subcadena(mapa_ruleta, posicion_ciclo * 2, (posicion_ciclo * 2) + 1);
        FinSi
        
        numero_salida <- ConvertirANumero(bloque);
        
        Escribir numero_salida, " " Sin Saltar;
        
    FinPara
    Escribir ""; 
FinAlgoritmo
