Algoritmo main
	
	Definir __numero_censo Como Texto
	Definir __sexo Como Texto
	Definir __edad Como Texto
	Definir __estado_civil Como Texto
	Definir __total Como Numero
	
	Dimension __tarjetas[5, 4]
	
	Para i = 1 Hasta 5 Con Paso 1 Hacer
		__validado = Falso
		__tarjetas[i, 1] = ConvertirATexto(i)
		
		Mientras __validado == Falso Hacer
			Escribir "¿Cual es su sexo?"
			Escribir "1. Hombre"
			Escribir "2. Mujer"
			Leer __sexo
			Segun __sexo Hacer
				Caso, "1":
					__tarjetas[i, 2] = "Hombre"
					__validado = Verdadero
				Caso, "2":
					__tarjetas[i, 2] = "Mujer"
					__validado = Verdadero
				De Otro Modo:
					Escribir "La opcion seleccionada no es valida"
			FinSegun
		FinMientras
		
		__validado = Falso
		
		Mientras __validado == Falso Hacer
			Escribir "Ingrese su edad: (0/150)"
			Leer __edad
			Si __validar_numero(__edad) == Verdadero Entonces
				Si ConvertirANumero(__edad) >= 0 y ConvertirANumero(__edad) <= 150 Entonces
					__tarjetas[i, 3] = __edad
					__validado = Verdadero
				SiNo
					Escribir "ERROR: La edad no está dentro del rango"
				FinSi
			SiNo
				Escribir "ERROR: Debe ingresar un número válido"
			FinSi
		FinMientras

		__validado = Falso
		
		Mientras __validado == Falso Hacer
			Escribir "¿Cual es su estado civil?"
			Escribir "1. Soltero"
			Escribir "2. Casado"
			Escribir "3. Divorciado"
			Leer __estado_civil
			Segun __estado_civil Hacer
				Caso, "1":
					__tarjetas[i, 4] = "Soltero"
					__validado = Verdadero
				Caso, "2":
					__tarjetas[i, 4] = "Casado"
					__validado = Verdadero
				Caso, "3":
					__tarjetas[i, 4] = "Divorciado"
					__validado = Verdadero
				De Otro Modo:
					Escribir "La opcion seleccionada no es valida"
			FinSegun
		FinMientras
	
		__aux_edad = ConvertirANumero(__edad)
		Si __sexo == "2" y __aux_edad >= 16 y __aux_edad <= 21 y __estado_civil == "1" Entonces
			__total = __total + 1
		FinSi
	FinPara
	
	Escribir "Un total de " , __total , " mujeres se encuentran dentro del espectro."
	Escribir "Listado:"
	
	Para i = 1 Hasta 2 Con Paso 1 Hacer
		__aux_edad = ConvertirANumero(__tarjetas[i, 3])
		Si __tarjetas[i, 2] == "Mujer" y __aux_edad >= 16 y __aux_edad <= 21 y __tarjetas[i, 4] == "Soltero" Entonces
			Escribir "Numero de censo: " , __tarjetas[i, 1]
		FinSi
	FinPara
	
FinAlgoritmo

Funcion __validado <- __validar_numero(__numero)
	__validado = Verdadero
	Para i = 5 Hasta Longitud(__numero) Con Paso 1 Hacer
		__v = Subcadena(__numero, i, i)
		Si __v <> "0" y __v <> "1" y __v <> "2" y __v <> "3" y __v <> "4" y __v <> "5" y __v <> "6" y __v <> "7" y __v <> "8" y __v <> "9" Entonces
			__validado = Falso
		FinSi
	FinPara
FinFuncion