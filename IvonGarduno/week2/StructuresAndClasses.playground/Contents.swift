import UIKit

/* LAS ESTRUCTURAS Y CLASES SON LOS COMPONENTES BASICOS QUE CONSTRUYEN
    EL CODIGO DEL PROGRAMA, ESTAS CONTIENEN PROPIEDADES Y METODOS 
    
    COMPARACION: AMBAS PUEDEN
    ** DEFINIR PROPIEDADES PARA ALMACENAR VALORES
    ** DEFINIR METODOS PARA FUNCIONALIDAD
    ** DEFINIR SUBINDICES PARA PROPORCIONAR ACCESO A SUS VALORES
    ** INICIALIZADORES PARA CONFIGURAR SU ESTADO INICIAL ( CONSTRUCTOR )
    
    
EN AMBAS SE UTILIZA EL TIPO UPPERCAMELCASE PARA DECLARARLAS*/


/* Structures
    SON TIPOS DE VALOR, LO CUAL SIGNIFICA QUE TODAS LAS INSTANCIAS QUE CREE
    Y CUALQUIER TIPO DE VALOR QUE TENGAN COMO PROPIEDADES, SIEMPRE SE COPIAN
    CUANDO SE PASAN EN SU CODIGO */

struct Person {
    var name: String
    func sayHello() {
        print("Hello, my name is \(name)")
    }
}

// CREACION DE UNA INSTANCIA DE ESTRUCTURA
let firstPerson = Person(name: "Luisa") //memberwise initializer
firstPerson.name
//firstPerson.sayHello()

/* Clases
    ** PERMITEN LA HERENCIA
    ** CONVERSION DE TIPOS QUE LE PERMITE VERIFICAR E INTERPRETAR EL TIPO DE UNA
        INSTANCIA DE CLASE EN TIEMPO DE EJECUCION
    ** LOS DESINICIALIZADORES PERMITEN QUE UNA INSTANCIA DE CVLASE LIBERE LOS
        RECURSOS QUE HA ASIGNADO
        
LAS CLASES SON DE TIPO REFERENCIA, LO CUAL SIGNIFICA QUE EN LUGAR DE CREAR UNA
    COPIA, SE UTILIZA UNA REFERENCIA A LA MISMA INSTANCIA EXISTENTE */
class TokenListProcessor {
    var tokens: [String]
    var values: [Int]
    init(tokens: [String], values: [Int]) {
        self.tokens = tokens
        self.values = values
    }
    
//    Another option...
//    init(tokensInput: [String], values: [Int]) {
//        tokens = tokensInput
//        self.values = values
//    }
}
let tlp = TokenListProcessor(tokens: ["abc", "cde", "fgh"], values: [1,2,3])
tlp.tokens
tlp.values



struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//let someResolution = Resolution()
//let someVideoMode = VideoMode()

// CREACION DE UNA INSTANCIA DE LA ESTRUCTURA RESOLUTION
let hd = Resolution(width: 1920, height: 1080)

// ACCESO A LAS PROPIEDADES DE LA INSTANCIA
hd.width
hd.height
var cinema = hd
cinema.width = 2000
cinema.height = 1500
cinema.width
cinema.height

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080"
tenEighty.frameRate = 60.0
print(tenEighty.frameRate)
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print(alsoTenEighty.frameRate)
print(tenEighty.frameRate)










class Person2 {
    let name: String
    let age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sayHello() -> String{
        return "Hello, my name is \(name) and I'm \(age) years old"
    }
}
class Student: Person2 {
    var favoriteSubject: String
    // INICIALIZADOR
    init(name: String, age: Int, favoriteSubject: String) {
        self.favoriteSubject = favoriteSubject
        super.init(name: name, age: age)
    }
    // METODO
    func giveInformation() -> String {
        let info = super.sayHello()
        return info + " and my favorite subject is \(favoriteSubject)"
    }
}
let student = Student(name: "Luisa", age: 28, favoriteSubject: "Computer Science")
// ACCESO AL METODO DE LA INSTANCIA
let info = student.giveInformation()
print(info)

