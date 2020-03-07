//Control Flow

let numberOfLegs: [String: Int] = ["spider": 8, "ant": 6, "cat":4]
for (animal, legs) in numberOfLegs {
    print("\(animal) : \(legs)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print(answer)

//Array<Element>(repeating: Element, num: Int)
var tablero = [Int](repeating: 0, count: 25)
//escaleras
tablero[3] = 11; tablero[10] = 2; tablero[9] = 9; tablero[6] = 11;
//serpientes
tablero[14] = -10; tablero[19] = -11; tablero[24] = -8

let finalPosition = 25
var currentPosition = 1
var dice = 0
while currentPosition <= finalPosition{
    //generamos cantidad de movimientos
    dice = Int.random(in: 0...6)
    //avanzar n cantidad de casilass
    currentPosition += dice
    print("Current position: \(currentPosition); dice: \(dice)")
    if currentPosition < finalPosition {
        //bajar o subir dependiendo de la posicion de las escaleras o serpientes
        currentPosition += tablero[currentPosition]
        //conditional ? true : false
        print("Encountered (\(tablero[currentPosition] < 0 ? "Serpiente" : "Escalera")) : \(tablero[currentPosition])")
    }
}
print("Game over!")

//repeat {
//    //block of code
//} while condition {
//
//}

let age = 3
switch age {
    case 0..<10:
        print("kid")
    case 10..<19:
        print("teen")
    default:
        print("adult")
}


let finalSquare = 25
var square = 0
var dice = 0
gameLoop: while square != finalSquare {
    dice = Int.random(in: 0..<7)
    switch square + dice {
        case finalSquare:
            break gameLoop
        case let newSquare where newSquare > finalSquare:
            continue gameLoop
        default:
            square += dice
            square += tablero[square]
    }
}
