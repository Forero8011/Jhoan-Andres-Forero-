Proceso ClasificacionTemperaturas
    Definir temp Como Real
    Definir conteoFiebre, conteoHipotermia Como Entero
	
    conteoFiebre <- 0
    conteoHipotermia <- 0
	
    Repetir
        Escribir "Ingrese la temperatura corporal en °C (0 para terminar):"
        Leer temp
		
        Si temp <> 0 Entonces
            Si temp > 37.5 Entonces
                Escribir "Paciente con fiebre"
                conteoFiebre <- conteoFiebre + 1
            Sino
                Si temp >= 36 Y temp <= 37.5 Entonces
                    Escribir "Temperatura normal"
                Sino
                    Escribir "Paciente hipotérmico"
                    conteoHipotermia <- conteoHipotermia + 1
                FinSi
            FinSi
        FinSi
		
    Hasta Que temp = 0
	
    Escribir "Total de pacientes con fiebre: ", conteoFiebre
    Escribir "Total de pacientes con hipotermia: ", conteoHipotermia
FinProceso
