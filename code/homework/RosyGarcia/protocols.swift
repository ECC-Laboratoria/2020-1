import UIKit

//Protocols

//nos define un funcionamiento para una estructura (o clase/enum) en particular.

/********************************* EJEMPLO PROTOCOLS **********************************/
protocol FullyNamed {
    var fullName: String { get }
    func sayFullName()
}

//las estructuras conforman a los protocolos
struct Employee: FullyNamed {
    //stored properties
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: Int
    
    //computed property
    var fullName: String {
        return firstName + " " + lastName
    }
    
    func sayFullName() {
        print("My name is \(fullName)")
    }
}

let employee1 = Employee(firstName: "Robert", lastName: "Plant", jobTitle: "Musician", phoneNumber: 567890987)
employee1.sayFullName()

enum Role {
    case guitar, vocals, bass, drums, arp
}

protocol BandNamed {
    var bandName: String { get }
}

struct BandMember: BandNamed {
    var bandName: String
    
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

let meme = BandMember(bandName: "Café Tacvba", name: "Meme", age: 50, role: .vocals)
let quique = BandMember(bandName: "Café Tacvba", name: "Quique", age: 54, role: .guitar)
let ruben = BandMember(bandName: "Café Tacvba", name: "Ruben", age: 52, role: .drums)
let joselo = BandMember(bandName: "Café Tacvba", name: "Joselo", age: 53, role: .bass)

let tacubos = [meme, quique, ruben, joselo]

func getTacubos(_ tacubos: [BandMember], tacuboClosure: (BandMember) -> Void) {
    for tacubo in tacubos {
        tacuboClosure(tacubo)
    }
}
print("\n\n")
getTacubos(tacubos) { (t: BandMember) in
    let name = t.name
    let age = t.age
    let roleString = t.getRoleName()
    print("\(name) has \(age) year and \(roleString) in \(t.bandName)")
}


//Delegation
/*
    Patrón de diseño (Design patterns) que permite, como su nombre lo indica, delegar
    la funcionalidad de una estructura (o clase) a otra
 
    Por ejemplo:
    La estructura/clase A DELEGA una de sus funcionalidades a una estructura/clase B.
 */

//class Dice {
//    let sides: Int
//    let generator: RandomNumberGenerator
//    init(sides: Int, generator: RandomNumberGenerator) {
//        self.sides = sides
//        self.generator = generator
//    }
//}
//
//protocol DiceGame {
//    var dice: Dice { get }
//    func play()
//}
//
////este protocolo solo puede ser conformado por clases (i.e., no por estructuras ni enums) -> AnyObject
//protocol DiceGameDelegate: AnyObject {
//    func gameDidStart(_ game: DiceGame)
//}
//
//class SnakesAndLadders: DiceGame {
//    let finalSquare = 25
//    let dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
//    var square = 0
//    var board: [Int]
//    init() {
//        board = Array(repeating: 0, count: finalSquare + 1)
//        board[3] = 11; board[10] = 2; board[9] = 9; board[6] = 11;
//        board[14] = -10; board[19] = -11; board[24] = -8
//    }
//    weak var delegate: DiceGameDelegate?
//    func play() {
//        square = 0
//        delegate?.gameDidStart(self)
//    }
//}
//
//class DiceGameTracker: DiceGameDelegate {
//    func gameDidStart(_ game: DiceGame) {
//        //some code to implement
//    }
//}
