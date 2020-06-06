#Prueba Departamental 1 - Big Data
#Segunda parte 
#Ejercicio 2

#Viajar en avión es 35 veces mayor a viajar en bus
#Costo pasaje bus=Costos Fijos + C.Variable
#CF=Valor tramo: sur:$4000 y norte: $6000
#CV=Valor pasaje hora de viaje bus: $5000

tipoTransporte <- "avion"

destino <- "punta arenas"

viajeChile <- if(destino == "la serena"){
  if(tipoTransporte == "bus"){
    print("Medio de transporte: Bus")
    print("Razón viaje: Vacaciones al Norte, La Serena")
    valorbus <- 6000+4*5000
    print(valorbus)
  }else if(tipoTransporte == "avion"){
    print("Medio de transporte: Avión")
    print("Razón de viaje: Trabajo al Norte, La Serena")
    valoravion <- 35*(6000+4*5000)
    print(valoravion)
  }
} else if(destino == "temuco"){
  if(tipoTransporte == "bus"){
    print("Medio de transporte: Bus")
    print("Razón de viaje: Vacaciones al Sur, Temuco")
    valorbus <- 4000+12*5000
    print(valorbus)
  }else if(tipoTransporte == "avion"){
    print("Medio de transporte: Avión")
    print("Razón de viaje: Trabajo al Sur, Temuco")
    valoravion <- 35*(4000+12*5000)
    print(valoravion)
  }
} else if(destino == "arica"){
  if(tipoTransporte == "bus"){
    print("Medio de transporte: Bus")
    print("razon de viaje: Vacaciones al Norte, Arica")
    costobus <- 24*5000+6000
    print(costobus)
  }else if(transporte == "avion"){
    #calculo para avion
    print("Medio de transporte: Avión")
    print("Razón de viaje: Trabajo al Norte, Arica")
    valoravion <- 35*(6000+24*5000)
    print(valoravion)
  }
} else if(destino == "punta arenas"){
  if(tipoTransporte == "bus"){
    #calculo para bus
    print("Medio de Transporte: Bus")
    print("Razón de viaje: Vacaciones al Sur, Punta Arenas")
    valorbus <- 56*5000+4000
    print(valorbus)
  }else if(tipoTransporte == "avion"){
    print("Medio de transporte: Avión")
    print("Razón de viaje: Trabajo al Sur, Punta Arenas")
    valoravion <- 35*(4000+56*5000)
    print(valoravion)
  }
}

#Ejercicio 3

#Crear una función que entregue el costo total de la canasta
#por kilogramos comprados y la forma de pago utilizados

manzana <- 3
peras <- 1.5
garbanzos <- 0.5
lentejas <- 0.7
paltas <- 2

listaProd <- print(list("manzana","peras","garbanzos","lentejas","paltas"))

metPago<- "Credito"

#Precio por Producto en kg

preciomanzana<- (manzana/0.35)*400
precioperas <- (peras/0.45)*450
preciogarbanzos <- (garbanzos/0.6)*450
preciolentejas <- (lentejas/0.6)*500
preciopaltas <- paltas*1500

precioProd <- print(round(preciomanzana+precioperas+preciogarbanzos+preciolentejas+preciopaltas))
  
metPago <- "Efectivo"

otroMedio <- 0.03

if(listaProd == "manzana" || listaProd == "peras" || listaProd == "garbanzos" || listaProd == "lentejas" || listaProd == "paltas"){
if(metPago =="Efectivo"){
      print("Método de pago: Efectivo")
      dtoEfectivo <- print(sample(10:40,1,replace = T))
      dtoEfectivo2 <- (dtoEfectivo/100)
      dtoTotal <- (precioProd*dtoEfectivo2)
      costoTotal <- print(round(precioProd-dtoTotal))
}else if(metPago == "Credito"){
      print("Método de pago: Crédito")
      aumentoCredito <- print(sample(1:10,1,replace = T))
      aumentoCredito2 <- ((aumentoCredito)/100)
      aumentoTotal <- (precioProd*aumentoCredito2)
      costoTotal <- print(round(precioProd+aumentoTotal))
}else if(metPago == "Otro"){
      print("Método de pago: Otro")
      costo <- 0.03
      costo2 <- print(precioProd*costo)
      costoTotal <- print(round(precioProd+costo2))
}
}

