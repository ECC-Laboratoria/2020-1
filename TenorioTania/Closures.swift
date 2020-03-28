// Closures

func sum(_ numbers: [Int]) -> Int {
  return total
}

let sumClosure = { (numbers: [Int]) -> Int in
  return total
}

//NO acepta parametros y no regresa ningun statement
let printClosure = { () -> Void in 
  print('This closure does not take any parameters and does not return a value')
}

//Acepta parámetros y no regresa statement
let printCLosure2 = { (strinf: String) -> Void in 
  print(string)
}

//No acepta parámetros y retorna un statement
let randomClosure = { () -> Int in 
  return 10
}

//Acepta parámteros y retorna statement
let randomNumberClosure = { (minValue: Int, maxValue: Int) -> Double in 
  return (minValue + maxValue) / 2
}

//Ejemplos

let driving = { () -> Void in
  print("I'm driving")
}
driving()

let driving2 = { (string: String) in
  print("I'm driving to \(string)")
}
driving2("CDMX")

let driving3 = { (string: String ) -> String in
  return "I'm driving to \(string)"
}
print(driving3("CDMX"))

//Closures as parameters

func eat(action: () -> Void) {
  action()
}
let breakfast = { print("I'm eating breakfast") }
eat(action: breakfast)

func read(action: (String, String) -> Srting ) {
  return action("El Aleph", "home")
}

let readAction = { (book: String, place: String) -> String
  return "I'm reading \(book) in \(place)."
}
read(action: readAction)

//Trailing Closure Syntax
eat {
  breakfast()
}

read { (book: String, place: String) in
  print("I'm reading \(book) in \(place).")
}

//Closures segunda parte

//pensar en funciones anidadas, en donde voy a llamar a la closure (función anónimoa) detrno de mi funcion reading
func reading(bookClosure: (String) -> Void) {
  print("Closure that accepts a parameter and returns nothing")
  bookClosure("El Aleph")
}
reading { (book: String) in
  print("I'm reading \(book)")
}

func reading2(bookClosure: (String) -> String) {
  print("Closure that accepts a parameter and returns a string")
  let bookMessage = bookClosure("El Aleph")
  print bookMessage
}

//Trailing closure syntax
//Sin simplificación
reading2 { (book: String) -> String in
  return "I'm reading \(book)"
}
//Simplificación del tipo valor de retorno
reading2 { (book: String) in
  return "I'm reading \(book)"
}
//Simplificación del tipo valor de retorno y de tipo de dato del parámetro
reading2 { book in
  return "I'm reading \(book)"
}
//Sin palabra return porque solo es una línea de código
reading2 { book in
  "I'm reading \(book)"
}
//Simplificación máxima de una closure
reading2 { 
  "I'm reading \($0)"
}

//Enum Puesto -> un caso para cada instrumento (case guitarriste, vocalista, etc)
//Struct llamada Tacubo(name: String, age: Int, puesto: Enum(Puesto))
//Crear a los cautro intergrantes de cafe tacuba como objetos
//func getTacubos(tacubos: [Tacubo], tacuboClosure: (Tacubo) -> Void)

//Output:
/*
  Meme tiene 50 años y es el tecladista en Café Tacvba...
*/

enum Role {
  case guitarrista
  case tecladista
  case bajista
  case vocalista
}

struct Tacubo {
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

let ruben = Tacubo(name: "Ruben", age: 50, puesto: Puesto.guitarrista)
let meme = Tacubo(name: "Meme", age: 47, puesto: Puesto.vocalista)
let jose = Tacubo(name: "Jose", age: 49, puesto: Puesto.tecladista)
let enrique = Tacubo(name: "Enrique", age: 52, puesto: Puesto.bajista)

let tacubos = [ruben, meme, jose, enrique]

func getTacubos(_ tacubos: [Tacubo], tacuboClosure: (Tacubo) -> Void) {
  for tacubo in tacubos {
    let tacuboMsg = tacuboClosure(tacubo)
  }
}

getTacubos(tacubos) { (t: Tacubo) in
  let name = t.name
  let age = t.age
  let roleString = t.getRoleName()
  print("\(name) has \(age) years and \(roleString)")
} 



