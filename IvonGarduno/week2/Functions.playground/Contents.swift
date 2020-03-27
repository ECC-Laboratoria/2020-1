mport UIKit

/*Functions
    Las funciones son fragmentos de codigo encerrado en { } que ejecutan tareas
    especificas 
    Se declaran con un nombre que describe lo que hace y este es usado para 
    llamarla cuando es requerida
    
    Las funciones aceptan parametros tipados al igual que se puede indicar
    el tipo de valor de retorno
    */
func greet(person: String) -> String {
    let greeting = "Hello \(person) !"
    return greeting
}
let response = greet(person: "Laboratoria")
print(response)

func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
print(sum(num1: 1, num2: 2))

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let arrayOfIntegers = [10,2,3,-12,345]
let a = minMax(array: arrayOfIntegers)

// min y max son metodos que devuelven el valor minimo y maximo en un arreglo

print(a.min)
print(a.max)







//'to' is an argument label for parameter name 'name'
func sayHello(to name: String) {
    print("Hello \(name)")
}
sayHello(to: "Laboratoria")

func sum2(_ a: Int,_ b: Int) -> Int {
    return a + b
}
//var mathFunction: (Int, Int) -> Int = sum2
//print("The result is \(mathFunction(2,3))")


