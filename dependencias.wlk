
class Dependencias {
    const flotaDeRodados = []
    const cantidadDeEmpleados

    method agregarAFlota(rodado) = flotaDeRodados.add(rodado)

    method quitarDeFlota(rodado) = flotaDeRodados.quitar(rodado)

    method pesoTotalFlota() = flotaDeRodados.sum({p => p.peso()})

    method estaBienEquipada() = self.cantidadRodados() >= 3 && self.todosLosRodadosVanAPorLoMenos100kmPorHora()

    method todosLosRodadosVanAPorLoMenos100kmPorHora() = flotaDeRodados.all({r => r.velocidadMaxima() >= 100})

    method capacidadTotalEnColor(color) = flotaDeRodados.filter({r => r.color() == color}).map({c => c.capacidad()}).sum()

    //method rodadosColor(color) = flotaDeRodados.filter({r => r.color() == color})

    method colorDelRodadoMasRapido() = flotaDeRodados.max({r => r.velocidadMaxima()}).color()

    method capacidadFaltante() = cantidadDeEmpleados - self.capacidadTotalDeFlota()

    method capacidadTotalDeFlota() = flotaDeRodados.sum({r => r.capacidad()})

    method esGrande() = cantidadDeEmpleados >= 40 && self.cantidadRodados() >= 5

    method cantidadRodados() = flotaDeRodados.size()

    

}