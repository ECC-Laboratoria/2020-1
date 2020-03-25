//Enumerations

enum CompassPoint {
  case north
  case south
  case east
  case west
}

var directionToHead = CompassPoint.west

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

let planet = Planet.mars
switch planet {
case .mercury:
  print("Close to the sun")
default:
  print("Farther than the sun")
}

for planet in Planet.allCases {
  print(planet)
}

//Raw Values
enum ASCIIControlCharacter: Character {
  case tab = "\t"
  case newLine = "\n"
  case carriageReturn = "\r"
}

let tab = ASCIIControlCharacter.tab.rawValue
print(tab)

enum Planet2: Int {
  case mercury = 1, venus, earth, mars
}
print(Planet2.mars.rawValue) //4
// el compilador de swift entiende que cada case tiene un valor de un entero al definirlo dentro del primer caso "mercury"

let somePlanet = Planet2(rawValue: 3)
print(somePlanet ?? "") // earth

