import interiores.*
import motores.*
import colores.*
class ChevroletCorsa {
    const property color

    method capacidad() = 4

    method velocidadMaxima() = 150

    method peso() = 1300
}

class RenaultKwid {
    const tieneTanque

    method capacidad() = if (!tieneTanque) 4 else 3

    method velocidadMaxima() = if (tieneTanque) 120 else 110

    method peso() = if (tieneTanque) 1200 + 150 else 200 

    method color() = azul 

}

object trafic{
    var property interior = comodo
    var property  motor = pulenta

    method capacidad() = interior.capacidad()

    method velocidadMaxima() = motor.velocidadMaxima()

    method peso() = 400 + interior.peso() + motor.peso()

    method color() = blanco

}

class AutosEspeciales {
    const property capacidad
    const property velocidadMaxima
    const property peso
    const property color
}