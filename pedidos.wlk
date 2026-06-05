class Pedidos {
    
    const property distanciaARecorrer
    var  tiempoMaximo
    const property cantidadPasajeros
    const coloresIncompatibles

    method velocidadRequerida() = distanciaARecorrer / tiempoMaximo

    method satisface(rodado) = self.es10KMPorHoraMayorAVelocidadRequerida(rodado) && self.laCapacidadAlcanzaParaElPedido(rodado) && self.esDeColorCompatible(rodado)

    method es10KMPorHoraMayorAVelocidadRequerida(rodado) = rodado.velocidadMaxima() >= self.velocidadRequerida() + 10

    method laCapacidadAlcanzaParaElPedido(rodado) = rodado.capacidad() >= cantidadPasajeros

    method esDeColorCompatible(rodado) = coloresIncompatibles.all({c => c != rodado.color()})
      
    method acelerar() { tiempoMaximo = tiempoMaximo - 1}

    method relajar() {tiempoMaximo = tiempoMaximo + 1} 

    method esColorIncompatible(color) = coloresIncompatibles.contains(color)
}