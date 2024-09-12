object golosinaIndefinida {
    var property precio = 0
    var property sabor = ""
    var property peso = 0
    var property contGluten = false

    method mordisco() {}
}

object bombon {
    var property precio = 5
    var property sabor = "Frutilla"
    var property peso = 15
    var property contGluten = false

    method mordisco() {
        peso=peso*0.8-1
    }
}
object alfajor {
    var property precio = 12
    var property sabor = "Chocolate"
    var property peso = 300
    var property contGluten = true

    method mordisco() {
        peso=peso*0.8
    }
}
object caramelo {
    var property precio = 1
    var property sabor = "Frutilla"
    var property peso = 5
    var property contGluten = false

    method mordisco() {
        peso=peso-1
    }
}
object chupetin {
    var property precio = 2
    var property sabor = "Naranja"
    var property peso = 7
    var property contGluten = false

    method mordisco() {
        if (peso<2){
            peso=peso*0.9
        }
    }
}
object oblea {
    var property precio = 5
    var property sabor = "Vainilla"
    var property peso = 250
    var property contGluten = true

    method mordisco() {
        if (peso>70){
            peso=peso*0.5
        }
        else {
            peso=peso*0.75
        }
    }
}
object chocolatin {
    var property sabor = "Chocolate"
    var peso = 0
    var property precio = 0
    var property contGluten = true

    method peso(gramos) {
        peso=gramos
        precio=peso*0.5
    }
    method peso() = peso

    method mordisco() {
        peso=peso-2
    }
}
object golosinaBaniada {

    var banioChocolate=4
    var golosinaBase = golosinaIndefinida

    method golosinaBase(golosina){
        golosinaBase=golosina
    }

    method precio() = golosinaBase.precio()+2 
    method peso() = golosinaBase.peso()+banioChocolate
    method sabor() = golosinaBase.sabor()
    method contGluten() = golosinaBase.contGluten()

    method mordisco() {
        golosinaBase.mordisco()
        banioChocolate= (banioChocolate-2).max(0)
    }

}
object pastillaTuttiFrutti {
    const sabores = ["Frutilla","Chocolate","Naranja"]
    var property peso = 5
    var property sabor = sabores.first()
    var property precio = 0
    var contGluten = false

    method contGluten(bool) {
        contGluten=bool
        if (contGluten){
            precio=10
        }
        else{
            precio=7
        }
    }
    method contGluten()=contGluten

    method mordisco() {
        const aMover=sabores.first()
        sabores.remove(aMover)
        sabores.add(aMover)
        sabor=sabores.first()
        //Usé esta forma de hacerlo porque no encontraba la
        //manera de manejar los indices de una lista.

        //Iguamente ahora ya sé que es con .get
    }
}

object mariano{
    var bolsaDeGolosinas=[]

    method comprar(golosina){
        bolsaDeGolosinas.add(golosina)
    }
    method desechar(golosina){
        bolsaDeGolosinas.remove(golosina)
    }
    method probarGolosinas(){
        //bolsaDeGolosinas.map(bolsaDeGolosinas=>bolsaDeGolosinas.mordisco())
    }
    method hayGolosinasSinTACC(){
    }
    method preciosCuidados(){
    }
    method golosinaDeSabor(sabor){
    }
    method golosinasDeSabor(sabor){
    }
    method sabores() {
        //return bolsaDeGolosinas.filter(golosina=>golosina.sabor()).asSet()
    }
}