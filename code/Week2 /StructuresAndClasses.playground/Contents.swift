import UIKit

//Structures
struct Person {
    var name: String
    func sayHello() {
        print("Hello, my name is \(name)")
    }
}
let firstPerson = Person(name: "Luisa") //memberwise initializer
firstPerson.name
//firstPerson.sayHello()

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

let hd = Resolution(width: 1920, height: 1080)
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
    init(name: String, age: Int, favoriteSubject: String) {
        self.favoriteSubject = favoriteSubject
        super.init(name: name, age: age)
    }
    func giveInformation() -> String {
        let info = super.sayHello()
        return info + " and my favorite subject is \(favoriteSubject)"
    }
}
let student = Student(name: "Luisa", age: 28, favoriteSubject: "Computer Science")
let info = student.giveInformation()
print(info)
