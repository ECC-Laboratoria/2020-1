import UIKit

/*Closure

ES UN MEDIO PARA NOMBRAR Y DEFINIR BLOQUES DE CODIGO INDEPENDIENTES COMO
PARTE DE UNA FUNCION MAS GRANDE

pensar en funciones anidadas, en donde voy a llamar a la closure (función
anónima) dentro de mi función reading */

//Ejemplo base
func reading(bookClosure: (String) -> Void) {
    print("Closure that accepts a parameter and returns nothing")
    bookClosure("El Aleph") //Jorge Luis Borges
}
reading { (book: String) in
    print("I'm reading \(book)")
}

func reading2(bookClosure: (String) -> String) {
    print("Closure that accepts a parameter and returns a String")
    let bookMessage = bookClosure("El Aleph")
    print(bookMessage)
}

//Trailing closure syntax (quito paréntesis)
/*
    reading2 {
        elements
    }
 */

/*
    Cuando tengo una función que tiene un closure como parámetro:
        1. Estoy llamando a la función reading2().
        2. De manera paralela, estoy definiendo el funcionamiento del closure.
*/

// TIPOS DE SINTAXIS DE UN CLOSURE

//Sin simplificación
reading2 { (book: String) -> String in
    return "I'm reading \(book)"
}
//Simplificación de valor de retorno
reading2 { (book: String) in
    return "I'm reading \(book)"
}
//Simplificación de valor de retorno y de tipo de dato del parámetro
reading2 { book in
    return "I'm reading \(book)"
}
//Como solo hay una línea de código en el closure, yo puedo quitar la palabra return
reading2 { book in
    "I'm reading \(book)"
}
//Simplificación máxima de un closure (sin parámetros, sin valores de retorno, sin palabra
// reservada return)
reading2 {
    "I'm reading \($0)"
}


func reading3(bookClosure: (String, String) -> String) {
    print("Reading3: Closure that accepts a parameter and returns a String")
    let bookMessage = bookClosure("El Aleph", "home")
    print(bookMessage)
}
reading3 {
    "I'm reading \($0) in \($1)"
}


func reading4() -> (String) -> Void{
    print("Reading 4: returns a closure")
    return { (book: String) -> Void in
        print("I'm reading \(book)")
    }
}
let bookClosure_ = reading4()
bookClosure_("El Aleph")


func eat(foodClosure: (String) -> String, place: String) -> String {
    let foodMsg = foodClosure("breakfast")
    return foodMsg + " at \(place)."
}

print("Msg 1")
let msg = eat(foodClosure: { (food: String) -> String in
    return "I'm eating \(food)"
}, place: "home")
print(msg)
print("Msg 2")
let msg2 = eat(foodClosure: { "I'm eating \($0)" }, place: "home")
print(msg2)
print("Msg 3")
let msg3 = eat(foodClosure: {
    let times = 10
    return "I'm eating \($0) \(times) times"
}, place: "home")
print(msg3)







// CREACION DE UNA ESTRUCTURA
struct SomeObject {
    var name: String
    var age: Int
}

// CREACION DE UNA INSTANCIA
let roberPlant = SomeObject(name: "Robert Plant", age: 75)

// FUNCION QUE LLAMA A CLOSURE
func identifyObject(object: SomeObject, objectClosure: (SomeObject) -> String ) {
    let msg = objectClosure(object)
    print(msg)
}
// LLAMA A FUNCION Y DEFINE ACCIONES A REALIZAR POR CLOSURE
identifyObject(object: roberPlant) {
    return "\($0.name) plays in Led Zepelling and has \($0.age)"
}

//Enum Puesto -> un caso para cada instrumento (case guitarrita, vocalista)
//Struct llamada Tacubo(name: String, age: Int, instrument: Enum(Instrument))
//Crear a los cuatro integrantes de cafe tacuba como objetos
//func getTacubos(tacubos: [Tacubo], tacuboClosure: (Tacubo) -> Void)


//Output:
/*
    Meme tiene 50 años y es el tecladista en Café Tacvba
    Rubén tiene 46 años y toca guitarra en Café Tacvba
    Joselo tiene 53 años y toca bajo en Café Tacvba
    Quique tiene 59 años y toca microfono en Café Tacvba
 */

enum Role {
    case guitar, vocals, bass, drums, arp
}

struct Tacubo {
    var name: String
    var age: Int
    var role: Role
    
    func getRoleName() -> String {
        switch self.role {
        case .bass:
            return "plays the bass"
        case .drums:
            return "plays the drums"
        case .guitar:
            return "plays the guitar"
        case .vocals:
            return "sings"
        default:
            return "play unknown instrument"
        }
    }
}

let meme = Tacubo(name: "Meme", age: 50, role: .vocals)
let quique = Tacubo(name: "Quique", age: 54, role: .guitar)
let ruben = Tacubo(name: "Ruben", age: 52, role: .drums)
let joselo = Tacubo(name: "Joselo", age: 53, role: .bass)

let tacubos = [meme, quique, ruben, joselo]

func getTacubos(_ tacubos: [Tacubo], tacuboClosure: (Tacubo) -> Void) {
    for tacubo in tacubos {
        tacuboClosure(tacubo)
    }
}
print("\n\n")
getTacubos(tacubos) { (t: Tacubo) in
    let name = t.name
    let age = t.age
    let roleString = t.getRoleName()
    print("\(name) has \(age) year and \(roleString)")
}
