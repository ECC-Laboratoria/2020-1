import UIKit

//Swift - Chris Lattner (LLVM)
/*
 
    Safety:
        - Optionals
    Type-Inference
 
*/

// swift es un lenguaje de tipado seguro, lo cual evita usar un valor incorrecto

// VARIABLES DE TIPO STRING -> cadena de caracteres entre " "
let hello = "hello,"
let world = " world!"

// Se usa el operador de suma + para concatenar strings
print(hello + world)

// Se usa la convencion Camel Case para declarar variables
let someConstant = "some random constant" //lowerCamelCase
var someVariable = 1

/*type annotation -> Para indicar de que tipo sera la variable 
    ENTEROS, DECIMALES, BOOLEANOS, TUPLAS
    */
var someIntSpecified: Int = 20
//CG -> Core Graphics
var somecgFloat: CGFloat = 10.0
var someFloat: Float = 10.0

var red, green, blue: Double

//Unicode - juego de caracteres
var 😀  = "Happy face"
print(😀)

//This is a comment
/*
 
 This is a multi line comment
 
*/
let cat = "😸"; print(cat)
let someBigNumber = 345_678_998_765


//Int and Double operations
let three = 3
let pointFive = 0.5

let sum = Double(three) + pointFive
print(sum)

//type alias
typealias AudioSample = UInt8
var minAmplitudeFound = AudioSample.min
var maxAmplitudeFound = AudioSample.max
print(minAmplitudeFound)
print(maxAmplitudeFound)

//typealias -> Codable

let orangesAreOrange = true
let turnipsAreDelicous = false

//Tuples
// PERMITE ELEGIR UNO U OTRO VALOR, SE RECOMIENDA USAR TUPLAS DE POCOS VALORES
let httpError = (404, "Not Found")
print(httpError)
print(httpError.0) // PRIMER VALOR
print(httpError.1) // SEGUNDO VALOR EN LA TUPLA

let metadata = ("05-02-20", "14:00")
let photoTuple = ("photo.jpg", metadata)
print(photoTuple.1.1) // ACCEDER A UNA TUPLA DENTRO DE OTRA TUPLA

/*String interpolation
    PARA INCLUIR UNA VARIABLE DENTRO DE UN STRING Y PEDIRLE A SWIFT QUE
    OBTENGA EL VALOR */
print("The photo was taken at \(photoTuple.1.1)")

let hello_ = "hello,"
let world_ = " world!"
print(hello_ + world_ )

let tripleValueTuple = (1, "food", 3.0)
print(tripleValueTuple.2)



/*
 Optionals
    -> represents the abscence of a value
    -> we use them in situations where a value may be absent
 Objective-C has no optionals
*/
print("\n\n\n\n\n\n")
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // PARA CONVERTIR UN STRING A NUMERO

if convertedNumber == nil {
    print("wrong number format")
} else {
    print(convertedNumber)
}

// PARA INDICAR VALORES OPCIONALES Y VALOR POR DEFECTO
var serverResponseCode: String? = "404"
serverResponseCode = nil
print(serverResponseCode)


//Optional Binding
/*
    We use optional binding to find out whether an optional contains a value or not
 */

let optionalNumber: Int? = 995
if let actualNumber = optionalNumber {
    print(actualNumber)
} else {
    print("wrong number format")
}

let firstBookTitle = "Enlightenment Now"
let firstBookAuthor = "Steven Pinker"
let firstBookReleaseYear: Int? = 2016

let nextBookTitle = "Harry Potter 8"
let nextBookAuthor = "J.K. Rowling"
let nextBookReleaseYear: Int? = nil

if let releaseYear = firstBookReleaseYear {
    print("\(firstBookTitle) by \(firstBookAuthor) released: \(releaseYear)")
} else {
    print("there is no release date yet")
}

if let releaseYear = nextBookReleaseYear {
    print("\(nextBookTitle) by \(nextBookAuthor) released: \(releaseYear)")
} else {
    print("There is no release date yet for \(nextBookTitle) ☹️")
}




//Force unwrapping
let possibleString: String? = "some random string"
print(possibleString!)
