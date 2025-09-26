import cosas.*
object camion {
 const carga =[]
method cargar(unaCosa){
 carga.add(unaCosa)
}
method descargar(unaCosa) {
  carga.remove(unaCosa)
}
method pesoTotal() = 1000 + carga.sum({cosa=>cosa.peso()})//sumo el peso de todas las cosas en el camion//

method todoPesoPar() = carga.all({cosa=>cosa.esPesoPar()})

method algunaCosaPesa(unValor){
    return  carga.any({cosa=>cosa.peso() == unValor})
} 
method primerConPeligrosidad(unValor){
   return carga.find({cosa=>cosa.peligrosidad() == unValor})
}
method todasLasCosasConMasPeligrosidad(unValor){
    return carga.filter({cosa=>cosa.peligrosidad() > unValor})
}
method cosasSuperanPeligrodadDe(unaCosa){
  return  carga.filter({cosa=>cosa.peligrosias()> unaCosa})
}


}


