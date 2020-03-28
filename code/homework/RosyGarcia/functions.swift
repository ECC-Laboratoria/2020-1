import UIKit

//Functions

/********************************* EJEMPLOS **********************************/

// Definición de la función del ejemplo 1
func greet(person: String) -> String {
    let greeting = "Hello \(person) !"
    return greeting
}
// Forma de ejecutar la función del ejemplo 1
let response = greet(person: "Laboratoria")
print(response)


// Definición de la función del ejemplo 2
func sum(num1: Int, num2: Int) -> Int {
    // Se tienen dos parámetros de entrada
    // La respuesta de retorno es la sumatoria de estos parámetros
    return num1 + num2
}
// Forma de ejecutar e imprimir el valor de la función del ejemplo 2
print(sum(num1: 1, num2: 2))


// Definición de la función del ejemplo 3
func minMax(array: [Int]) -> (min: Int, max: Int) {
    // El parámetro de entrada es un arreglo y
    // su respuesta de retorno son dos entreros (min: Int, max: Int)
    var currentMin = array[0]
    var currentMax = array[0]
    // Lógica
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    // Aquí se devuelve la respuesta de retorno
    return (currentMin, currentMax)
}
// Forma de ejecutar e imprimir el valor de la función del ejemplo 3
let arrayOfIntegers = [10,2,3,-12,345] // Asignación del valor del array
let a = minMax(array: arrayOfIntegers) // Ejecución de la función del ejemplo 3
print(a.min) // Accediendo al primer valor de la respuesta para imprimir
print(a.max) // Accediendo al segundo valor de la respuesta para imprimir


// Definición de la función del ejemplo 4
//'to' is an argument label for parameter name 'name'
func sayHello(to name: String) {
    print("Hello \(name)")
}
// Forma de ejecutar e imprimir el valor de la función del ejemplo 4
sayHello(to: "Laboratoria")


// Definición de la función del ejemplo 5
func sum2(_ a: Int,_ b: Int) -> Int {
    return a + b
}
// Forma de ejecutar e imprimir el valor de la función del ejemplo 5
//var mathFunction: (Int, Int) -> Int = sum2
//print("The result is \(mathFunction(2,3))")


