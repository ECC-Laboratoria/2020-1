//Closures  (anonymous functions)
/*
    Closure is a self-contained block of functionality that can be passed around and used in your code. 
*/

// func sum(_ numbers: [Int]) -> Int {
//     return total
// }

// let sumClosure = { (numbers: [Int]) -> Int in 
//     return total
// }

// let printClosure = { () -> Void in 
//     print("This closure does not take any parameters and does not return a value")
// }

// let printClosure2 = { (string: String) -> Void in 
//     print(string)
// }

// let randomClosure = { () -> Int in 
//     return 10
// }

// let randomNumberClosure = { (minValue: Int, maxValue: Int) -> Double in 
//     return (minValue + maxValue) / 2
// }


let driving = { () -> Void in 
    print("I'm driving")
}
driving()

let driving2 = { (string: String) in 
    print("I'm driving to \(string)")
}
driving2("CDMX")

let driving3 = { (string: String) -> String in 
    return "I'm driving to \(string)"
}
print(driving3("CDMX"))

//Closures as parameters
func eat(action: () -> Void) {
    action()
}
let breakfast = { () -> Void in
    print("I'm eating breakfast") 
}
eat(action: breakfast)

//Trailing Closure Syntax
eat {
    breakfast()
}

func read(action: (String, String) -> Void) {
    action("El Aleph", "home")
}
let readAction = { (book: String, place: String) in
    print("I'm reading \(book) in \(place).")
}
read(action: readAction)
//Trailing Closure Syntax
read { (book: String, place: String) in 
    print("I'm reading \(book) in \(place).")
}