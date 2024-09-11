class Golosina{
    var property peso
    var property precio
    method libreGluten() =true

    method mordisco(){}
}
class Bombon inherits Golosina{
    override method mordisco(){peso=(peso*0.8)-1}
    method gusto()=frutilla
}

//los objetos no tienen herencia