// Protocols

protocol FullyNamed {
  var fullName: String { get set }
  func sayFullName()
}

//las estrcuturas conforman a los protocolos
struct Employee: FullyNamed {
  var firstName: String
  var lastName: String
  var jobTitle: String
  var phoneNumber: Int

  var fullName: String {
    return firstName + " " + lastName
  }
  func sayFullName() {
    print("My name is \(fullName)")
  }
}

let employee1 = Employee(firstName: "Robert", lastName: "Plan", jobTitle: "Musician", phoneNumber: 5678901234)
employee1.sayFullName()

//Ejemplo

enum Role {
  case guitarrista
  case tecladista
  case bajista
  case vocalista
}

protocol BandNamed {
  var bandName: String { get }
}

struct BandMember {
  var bandName: String
  var name: String
  var age: Int
  var role: Role
  func getRoleName() -> String {
    switch self.role {
      case .guitarrista:
        return "plays the guitar"
      case .tecladista:
        return "plays the keyboard"
      case .bajista:
        return "plays the bass"
      case .vocalista:
        return "sings"
    }
  }
}


let ruben = BandMember(bandName: "Cafe Tacuba", name: "Ruben", age: 50, puesto: Puesto.guitarrista)
let meme = BandMember(bandName: "Cafe Tacuba", name: "Meme", age: 47, puesto: Puesto.vocalista)
let jose = BandMember(bandName: "Cafe Tacuba", name: "Jose", age: 49, puesto: Puesto.tecladista)
let enrique = BandMember(bandName: "Cafe Tacuba", name: "Enrique", age: 52, puesto: Puesto.bajista)

let tacubos = [ruben, meme, jose, enrique]

func getTacubos(_ tacubos: [BandMember], tacuboClosure: (BandMember) -> Void) {
  for tacubo in tacubos {
    let tacuboMsg = tacuboClosure(tacubo)
  }
}

getTacubos(tacubos) { (t: Tacubo) in
  let name = t.name
  let age = t.age
  let roleString = t.getRoleName()
  print("\(name) has \(age) years and \(roleString) in \(t.bandName)")
} 

//Delegation

/*
  Patrón de diseño (Design Patterns) que permite, como su nombre lo indica, delegar
  la funcionalidad de una estrcutura (o clase) a otra

  Por ejemplo:
  La estructura A DELEGA una de sus funcionalidades a una estructura B
*/

class Dice {
  let sides: Int
  let generator: RandomNumberGenerator

  init(sides: Int, generator: RandomNumberGenerator) {
    self.sides = sides
    self.generator = generator
  }
}

protocol DiceGame {
  var dice: Dice { get }
  func play()
}

//este protocolo solo puede ser conformado por clases (no por estructuras ni enums) -> AnyObjetc
protocol DiceGameDelegate: AnyObject {
  func gameDidStart(_ game: DiceGame)
  func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
  func gameDidEnd(_ game: DiceGame)
}

class SnakesAndLadders: DiceGame {
  let finalSquare = 25
  let dice = Dice(sides: 6, generator: LinealCongruentialGenerator())
  var square = 0
  var board: [Int]
  init() {
    board = Array(repeating: 0, count: finalSquare + 1)
    board[3] = 11; board[10] = 2; boeard[9] = 9; 
  }

  //aqui se indica que se va a delegar
  weak var delegate: DiceGameDelegate?
  func play() {
    square = 0
    delegate?.gameDidStart(self)
  }
}

//en esta clase se recibe el protocolo delegado
class DiceGameTracker: DiceGameDelegate {
  func gameDidStart(_ game: DiceGame) {
    //some code to implement
  }
}
