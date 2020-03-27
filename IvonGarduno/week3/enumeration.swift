import UIKit

/* Enum -> ES UN GRUPO DE VALORES RELACIONADOS PARA TRABAJAR CON ELLOS DE
        FORMA SEGURA DENTRO DEL CODIGO */

// Declaracion de una enumeracion
enum CompassPoint {
    case north
    case south
    case west
    case east
}

// Acceso a un valor especifico de la enumeracion
let directionToHead = CompassPoint.west
print(type(of: directionToHead))

// Accion a realizar dependiendo de la coincidencia del valor de la enumeracion
switch directionToHead {
case .north:
    print("Going north")
case .south:
    print("Going south")
case .east:
    print("Going east")
case .west:
    print("Going west")
}

enum Planet: CaseIterable {
    case mercury, venus, earth, mars
}

let enumPlanet = Planet.venus

switch enumPlanet {
case .mercury:
    print("Close to the sun")
default:
    print("Farther than the sun")
}

for planet in Planet.allCases {
    print(planet)
}

//Raw Values
//ASCII -> American Standard Code for Information Interchange
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case newLine = "\n"
    case carriageReturn = "\r"
}

let tab = ASCIIControlCharacter.tab.rawValue
//print(tab)

enum Planet2: Int {
    case mercury = 1, venus, earth, mars, jupyter, saturn, uranus
}
let earth = Planet2.earth.rawValue
print(earth)

let somePlanet = Planet2(rawValue: 6)
print(somePlanet ?? "")
