//Collection Types

 /* EXISTEN 3 TIPOS DE COLECCIONES -> Matrices, Conjuntos y Diccionarios
    Sirven para almacenar colecciones de valores

    Se debe indicar el tipo de dato que almacenaran y no puede insertarse un valor
    con un tipo de dato distinto */

//Arrays
//Array<Int> -> [Int]
// Declaracion de un arreglo de tipo entero
var someIntsExample: [Int] = [1,2,3]

//empty array
// var dog = new Dog();
// var someInts = new Array<Int>();
var someInts = [Int]()

/* Los arreglos tienen metodos, append sirve para agregar valores al arreglo
    previamente declarado */
let a = 23
someInts.append(a)
someInts.append(2)
someInts.append(3)

/* De esta manera podemos crear un arreglo con varios valores sin ingresar
    uno por uno */
var threeDoubles = Array(repeating: a, count: 3)

// Las matrices son collecciones de diversas dimensiones
var matrix: [[Int]] = Array(repeating: [0,0,0], count: 3)


/* isEmpty es una propiedad booleana que valida si la longitud del arreglo
    es cero */
var shoppingList = ["Eggs", "Milk"]
if shoppingList.isEmpty {
    print("No more things to buy")
}else {
    print("Going to the supermarket")
}

shoppingList.append("Orange Juice")
let myDadShoppingList = ["Beer", "Toolbox"]

/* Es posible utilizar el operador de asignacion compuesta
    para sumar y asignar los elementos de ambos arreglos en el primero */
shoppingList += myDadShoppingList

/* Utilizamos el ciclo for para recorrer los elementos de un arreglo */
for element in shoppingList {
    print(element)
}

/* El metodo enumerated itera sobre la matriz y devuelve una tupla de un entero
    el elemento, el entero empieza en cero lo cual equivale a la posicion del 
    elemento en la matriz */
for (index, value) in shoppingList.enumerated() {
    print("\(index+1): \(value)")
}







//Dictionaries
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
print(namesOfIntegers)
namesOfIntegers = [:]
print(namesOfIntegers)



var airports: [String: String] = ["YYZ": "Toronto Pearson Airport", "DUB": "Dublin Airport", "LHR": "London Heathrow Airport"]

print(airports.count)
airports["CDMX"] = "CDMX Airport"
//Optional binding
if let oldVaue = airports.updateValue("Benito Juárez Intl. Airport", forKey: "CDMX") {
    print(oldVaue)
}else {
    print("There is no such key.")
}

//iterate over an dictionary
for (key, name) in airports {
    print("\(key) -> \(name)")
}
for key in airports.keys {
    print(key)
}
for value in airports.values{
    print(value)
}

let airportNames = Array<String>(airports.values)
let airportKeys = [String](airports.keys)
