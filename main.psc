Algoritmo main
	
	Definir __numero_censo Como Texto
	Definir __sexo Como Texto
	Definir __edad Como Texto
	Definir __estado_civil Como Texto
	Definir __total Como Numero
	
	Dimension __tarjetas[5, 4]
	
	Para i = 1 Hasta 5 Con Paso 1 Hacer
		__tarjetas[i, 1] = ConvertirATexto(i)
		Escribir "¿Cual es su sexo?"
		Escribir "1. Hombre"
		Escribir "2. Mujer"
		Leer __sexo
		__tarjetas[i, 2] = __sexo
		Escribir "Ingrese su edad: (0/100)"
		Leer __edad
		__tarjetas[i, 3] = __edad
		Escribir "¿Cual es su estado civil?"
		Escribir "1. Soltero"
		Escribir "2. Casado"
		Escribir "3. Divorciado"
		Leer __estado_civil
		__tarjetas[i, 4] = __estado_civil
		
		__aux_edad = ConvertirANumero(__edad)
		
		Si __sexo == "Mujer" y __aux_edad >= 16 y __aux_edad <= 21 y __estado_civil == "Soltero" Entonces
			__total = __total + 1
		FinSi
	FinPara
	
	Escribir "Un total de " , __total , " mujeres se encuentran dentro del espectro."
	Escribir "Listado:"
	
	Para i = 1 Hasta 5 Con Paso 1 Hacer
		__aux_edad = ConvertirANumero(__tarjetas[i, 3])
		Si __tarjetas[i, 2] == "Mujer" y __aux_edad >= 16 y __aux_edad <= 21 y __tarjetas[i, 4] == "Soltero" Entonces
			Escribir "Numero de censo: " , __tarjetas[i, 1]
		FinSi
	FinPara
	
FinAlgoritmo
