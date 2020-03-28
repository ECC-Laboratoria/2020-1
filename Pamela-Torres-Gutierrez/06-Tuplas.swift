//import UIkit

//TUPLAS
/*Se utiliza para juntar dos tipos de cosas y en swift se utiliza tupla en luzar de case.
  Se utiliza para agrupar un error y un mensaje como el de la pagina web
  Las tuplas pueden tener varios elementos 2,3, 4 etc*/

  let http404Error = (404, "Pagina no encontrada")
  print(http404Error)

  //En caso de que quiera separar un resultado en tupla y asignarlo a variables se hace
  let (statusCode, statusMessage) = http404Error
  print("El códifo del estado es \(statusCode)")
  print("El mensaje del servidor es \(statusMessage)")

  //solo seccionar que parte quiero de una tupla
  let (justStatusCode, _) = http404Error
  print("El código del estado es \(justStatusCode)")

//se puede extaer las tuplas sin necesidad de crear variables colocando punto y numero de posición como en un arreglo
  print("El código código del error es \(http404Error.0) y el mensajes es \(http404Error.1)")

//otra manera de realizarlo una tapla es colocando las 2 variables directamente en la asignación
let http200Status = (statusPage: 200, description: "OK")
print("el código del estado es \(http200Status.statusPage) y el mensaje es \(http200Status.description)")  
  
  