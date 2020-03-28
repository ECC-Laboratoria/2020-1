
import UIKit

// Definición del ejemplo 1 de enumeración
enum CompassPoint {
    case north
    case south
    case west
    case east
}
// Forma de acceder al valor de ejemplo 1 de enumeración
let directionToHead = CompassPoint.west //Accediendo al valor del caso cuando a la entrada se tiene west
print(type(of: directionToHead))

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


// Definición del ejemplo de enumeración 2, usando el protocol CaseIterable
enum Planet: CaseIterable {
    case mercury, venus, earth, mars
}
//Accediendo al valor venus del ejemplo de enumeración 2
let enumPlanet = Planet.venus

switch enumPlanet {
case .mercury:
    print("Close to the sun")
default:
    print("Farther than the sun")
}
// Imprimiendo el valor del caso que le corresponde a los valores de Planet
for planet in Planet.allCases {
    print(planet)
}


// Definición del ejemplo 3 de enumeración
//Raw Values
//ASCII -> American Standard Code for Information Interchange
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case newLine = "\n"
    case carriageReturn = "\r"
}
// Forma de ejecución del ejemplo 3 de enumeración
let tab = ASCIIControlCharacter.tab.rawValue
print(tab)


// Definición del ejemplo 4 de enumeración - En listado de los valores de manera autómatica, tomando a mercury como el primer valor
enum Planet2: Int {
    case mercury = 1, venus, earth, mars, jupyter, saturn, uranus
}
let earth = Planet2.earth.rawValue
print(earth)
// Accediendo al valor de Planet2 que tenga la posición 6
let somePlanet = Planet2(rawValue: 6)
print(somePlanet ?? "")

