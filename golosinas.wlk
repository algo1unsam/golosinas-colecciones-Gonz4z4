object bombon {
    method precio()= 5
    var property peso= 15
    method sabor()= 'frutilla'
    method gluten()=false
    
    method mordisco(){
        peso=(peso*0.8)-1
    }
    method peso(){
        return peso
    }
}
object alfajor {
    method precio()= 12
    var property peso= 300
    method sabor()= 'chocolate'
    method gluten()=true
    
    method mordisco(){
        peso=peso*0.8
    }
    method peso(){
        return peso
    }

}

object caramelo {
    method precio()= 1
    var property peso= 5
    method sabor()= 'frutilla'
    method gluten()=false
    
    method mordisco(){
        peso-=1
    }
    method peso(){
        return peso
    }
}
object chupetin {
    method precio()= 2
    var property peso= 7
    method sabor()= 'naranja'
    method gluten()=false
    
    method mordisco(){
        if(peso>2){        
            peso=peso*0.9
        }
    }
    method peso(){
        return peso
    }
}

object oblea {
    var property peso= 250
    method precio()= 5
    method sabor()= 'vainilla'
    method gluten()=true
    
    method mordisco(){
        if(peso>70){
            peso=peso*0.5
        } else {
            peso=peso*0.25
        }
    }
    method peso(){
        return peso
    }
}
object chocolatin {
    method precio()= 0.5*pesoInicial
    var property pesoInicial= 20 //a asignar por el usuario
    var property peso=pesoInicial
    method sabor()= 'naranja'
    method gluten()=false
    
    method elegirPesoInicial(valor){
        pesoInicial=valor
    }
    method mordisco(){
        peso-=2
    }
    method peso(){
        return peso
    }
}
object golosinaBanada {
    var property golosinaBase=bombon
    var property banoChocolate = 4
    method golosinaBase(golosina){
        golosinaBase=golosina
    }

    method sabor()=golosinaBase.sabor()
    method peso() =golosinaBase.peso()+banoChocolate
    method precio() =golosinaBase.precio()+2
    method gluten() = golosinaBase.gluten()
    method mordisco() {
        golosinaBase.mordisco()
        banoChocolate=(banoChocolate-2).max(0)
        //if(pesobanio>0){pesoBanio-=(2)}
    }
    
}
object pastilla{
    var property peso= 5
    var property gluten=true
    var property precio = precioGluten
    const property precioGluten = 10
    const property precioNoGluten = 7
    var property sabor =frutilla
    method cambioGluten(){
        if (gluten){
            gluten=false
            precio=precioNoGluten
        } else {
            gluten=true
            precio=precioGluten
        }
    }
    method mordisco() {
        //if(sabor=='frutilla'){
        //    sabor='chocolate'
        //} else if(sabor=='chocolate'){
        //    sabor='naranja'
        //}else if(sabor=='naranja'){
        //    sabor='frutilla'
        sabor =sabor.siguiente()
        }
}
object frutilla{
    method siguiente() = chocolate
}
object chocolate{
    method siguiente() = naranja
}
object naranja{
    method siguiente()= frutilla
}