object tito {
  var peso = 70
  var bebidaConsumida = terere
  var dosisConsumida = 10
  var edad = 30
  
  method cumplirAnios() {edad += 1}
  method peso() = peso
  method cambiarPeso(nuevoPeso) {peso = nuevoPeso}

  method consumir(cantidad, bebida){
    bebidaConsumida = bebida
    dosisConsumida = cantidad
  }

  method velocidad() = bebidaConsumida.rendimiento(dosisConsumida,self) * 490/peso - if (edad > 30) 10 else 0

  method esFeliz() = self.velocidad() >= 7
}

object pepe {
  var peso = 80
  var bebidaConsumida = terere
  var dosis = 10
  var edad = 30

  method peso() = peso
  method cambiarPeso(nuevoPeso) {peso = nuevoPeso}
  method cumplirAnios() {edad += 1}

  method consumir(cantidad, bebida){
    bebidaConsumida = bebida
    dosis = cantidad
  }

  method velocidad() {
    return bebidaConsumida.rendimiento(dosis,self) * 490/peso - if (edad > 30) 10 else 0
  }
}

object whisky {
  method rendimiento(dosisConsumida,unDeportista) = 0.9 ** dosisConsumida
}

object terere {
  method rendimiento(dosisConsumida,unDeportista) = (0.1 * dosisConsumida).max(1)
}

object cianuro {
  method rendimiento(dosisConsumida,unDeportista) = 
    if (unDeportista.peso() > 70) {
      unDeportista.peso() / 100 + dosisConsumida
    }
    else 0
}