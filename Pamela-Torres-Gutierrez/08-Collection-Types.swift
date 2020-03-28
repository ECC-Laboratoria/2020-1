//import UIkit

//COLLECTION TYPES

/*Se utilizan para las matrices, conjuntos o diccionarios de datos, para almacenar colecciones de valores.
  Las matrices son colecciones de valores ordenadas.
  Los conjuntos son colecciones desordenadas de valores únicos
  Los diccionarios son colecciones de desordenadas y que ademas cuentan con un valor llave o Key
  No puede insertar un valor del tipo incorrecto en una colección por error. 
  También significa que puede confiar en el tipo de valores que recuperará de una colección.*/

  //Arrays:  Una matriz almacena valores del mismo tipo en una lista ordenada. El mismo valor puede aparecer en una matriz varias veces en diferentes posiciones.
  
  //creación de matriz vacia
  var someInts = [Int]()
  print(" la constante someInts es de tipo [Int] con \(someInts.count) articulos.") // Imprimira el arreglo vacio

  //creación de matri con valor determinado
  var threeDoubles = Array(repeating: 0.0, count: 3)
  print(threeDoubles) //Iprimira tres veces 0.0 yna vez por cada registro de matriz