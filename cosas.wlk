object cosas {
    
}
object knighrider{
 method peso() =500
 method peligrosidad() = 10
 method esPesoPar() = self.peso().even()
}

object bumblebee{
    var esAuto = true
    method transformateEnAuto(){
        esAuto=true
    }
    method transformateEnRobot(){
        esAuto=false
    }
    method peso()= 800
    method peligrosidad(){
        if(esAuto) 15
          else 30}
 method esPesoPar() = self.peso().even()
}

 object ladrillos{
     var cantidad =30
     method cantidad(nuevaCantidad){
        cantidad = nuevaCantidad
     }
     method peso() = 2 * cantidad
     method peligrosidad()= 2
method esPesoPar() = self.peso().even()
}

object arena{
    var peso = 0
    method peso(nuevoPeso){
        peso = nuevoPeso
    }
    method peligrosidad (){ return 1}
    method esPesoPar() = self.peso().even()
    method peso() = peso 
}
object bateriaAntiaerea{
    var estaConMisiles = false
    method cargarMisiles(){
        estaConMisiles= true
    }
    method descargarMisiles(){
        estaConMisiles = false
    }
    method peso(){
       return if (estaConMisiles) 300 else 200
    }
    method peligrosisdad()= if (estaConMisiles) 100 else 0
    method esPesoPar() = self.peso().even()
}
object contenedor{
    const cosasAdentro = []
    method agregar(unaCosa){
        cosasAdentro.add(unaCosa)
    }
    method agregarVariasCosas(variasCosas){
        cosasAdentro.addAll(variasCosas)
    }
    method quitarCosa(unaCosa){
        cosasAdentro.remove(unaCosa)
    }

    method peso() = 100 + cosasAdentro.sum({cosa => cosa.peso()})
   // method peligrosidad() = cosasAdentro.max({cosa=> cosa.peligrosidad()}).peligrosidad()//({}) ->me duveuve un objeto y de ahi le pregunto la peligrosidad con ".peligrosidad" //  
   
   method peligrosidad(){
     if (cosasAdentro.isEmpty())0
     else cosasAdentro.max({cosa=>cosa.peligrosidad()}).peligrosidad()
   }
   method esPesoPar() = self.peso().even()
}
   object residuos{
    var property peso = 0
    method peligrosidad() = 200
    method esPesoPar() = self.peso().even()
   }

   object embalaje{
    var cosaEnvuelta = arena
    method envoolver(unaCosa){
        cosaEnvuelta = unaCosa
    }
    method peso() {
        return cosaEnvuelta.peso() // <- es igual a method peso() =cosaEnvuelta.peso()
    }   
    method peligrosidad()= cosaEnvuelta.peligrosidad() / 2
    method esPesoPar() = self.peso().even()
    
   }
