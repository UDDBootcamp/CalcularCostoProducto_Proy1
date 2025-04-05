Algoritmo  CalcularCostoProducto
	
	// Definimos los valores Enteros
	Definir DescuentoCupon, CostoFijo, Iva, DescuentoPorMayor, TotalEnvio, PrecioProducto, Cantidad, TotalDespacho, LugarDespacho Como Entero
	DescuentoCupon <- 10
	CostoFijo <- 10
	Iva <- 12
	DescuentoPorMayor <- 5
	
	// Definimos los valores con decimales
	Definir TotalIva, TotalDescuento, TotalDescuentoPorMayor, Total, PesoProducto Como Real
	
	// Definimos los textos
	Definir ObtenerCupon Como Cadena
	
	// Plantilla de mensaje
	Definir mensaje, mensaje2 Como Cadena
	
	// Se pide ingresar el precio del producto
	Escribir "Ingrese el precio de las zapatillas"
	Leer PrecioProducto
	
	Repetir
		// Consulta si el cliente tiene cupón de descuento
		Escribir "¿Usted tiene cupón de descuento? Indique si o no."
		Leer ObtenerCupon
		
		// Verificar si el cliente tiene cupon de Descuento
		Si ObtenerCupon = "si" Entonces
			TotalDescuento <- PrecioProducto * (1 - DescuentoCupon / 100)
			mensaje <- "El total con descuentos es de: "
		Sino Si ObtenerCupon = "no" Entonces
				TotalDescuento <- PrecioProducto
				mensaje <- "Usted no tiene descuento: "
			SiNo
				Escribir "Porfavor, ingrese si o no"
			FinSi
		FinSi	
	Hasta Que (ObtenerCupon = "si" O ObtenerCupon = "no")
	
	Escribir mensaje "$ " TotalDescuento
	
	// Obtengo el valor con iva
	TotalIva <- TotalDescuento * (1 + Iva / 100)
	Escribir "Su total con iva es de: $ " TotalIva  
	
	// Se pide la cantidad de productos 
	Escribir "Indique la cantidad solicitada"
	Leer Cantidad
	
	// Obtener Descuento por unidad
	Si Cantidad >= 2 Entonces
		TotalDescuentoPorMayor <- TotalIva - (TotalIva * (DescuentoPorMayor / 100))
		mensaje2 <- "Si tiene descuento por cantidad, su total es: $ "
	SiNo
		TotalDescuentoPorMayor <- TotalIva 
		mensaje2 <- "No tiene descuento por cantidad, su total es: $ "
	FinSi
	Escribir mensaje2 TotalDescuentoPorMayor
	
	// Se pide el peso del producto
	Escribir "Indique el peso del producto en Kg."
	Leer PesoProducto
	
	Repetir
		// Se pide ingresar lugar de despacho
		Escribir "Indique lugar de despacho, según su número correspondiente: "
		Escribir "1 - Zona Norte"
		Escribir "2 - Zona Centro"
		Escribir "3 - Zona Sur"
		Escribir "4 - Nueva York"
		Leer LugarDespacho
		
		// Verificar lugar de despacho
		Si  LugarDespacho = 1 Entonces
			TotalDespacho <- 5
		SiNo Si  LugarDespacho = 2 Entonces
				TotalDespacho <- 4
			SiNo Si  LugarDespacho = 3 Entonces
					TotalDespacho <- 3
				SiNo Si  LugarDespacho = 4 Entonces
						TotalDespacho <- 2
					SiNo 
						Escribir "Porfavor, indique el número correspondiente al lugar de despacho"
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que (LugarDespacho = 1 O LugarDespacho = 2 O LugarDespacho = 3 O LugarDespacho = 4)
	
	// Obtengo el costo de envio
	TotalEnvio <- CostoFijo + (TotalDespacho * PesoProducto)
	Escribir "Costo de envío: $ " TotalEnvio
	
	// Obtengo el precio total con el envío
	Total <- TotalDescuentoPorMayor * Cantidad + TotalEnvio
	Escribir "Precio final a pagar: $ " Total
	
FinAlgoritmo
