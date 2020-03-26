//Collection Types

//Arrays
//Array<Int> -> [Int]
var someIntsExample: [Int] = [1,2,3]

//empty array
// var dog = new Dog();
// var someInts = new Array<Int>();
var someInts = [Int]()
let a = 23
someInts.append(a)
someInts.append(2)
someInts.append(3)

var threeDoubles = Array(repeating: a, count: 3)

var matrix: [[Int]] = Array(repeating: [0,0,0], count: 3)



var shoppingList = ["Eggs", "Milk"]
if shoppingList.isEmpty {
    print("No more things to buy")
}else {
    print("Going to the supermarket")
}

shoppingList.append("Orange Juice")
let myDadShoppingList = ["Beer", "Toolbox"]

shoppingList += myDadShoppingList

for element in shoppingList {
    print(element)
}

for (index, value) in shoppingList.enumerated() {
    print("\(index+1): \(value)")
}







//Dictionaries
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
print(namesOfIntegers)
namesOfIntegers = [:]
print(namesOfIntegers)



var airports: [String: String] = ["YYZ": "Toronto Pearson Airport", "DUB": "Dublin Airport", "LHR": "London Heathrow Airport"]

print(airports.count)
airports["CDMX"] = "CDMX Airport"
//Optional binding
if let oldVaue = airports.updateValue("Benito Juárez Intl. Airport", forKey: "CDMX") {
    print(oldVaue)
}else {
    print("There is no such key.")
}

//iterate over an dictionary
for (key, name) in airports {
    print("\(key) -> \(name)")
}
for key in airports.keys {
    print(key)
}
for value in airports.values{
    print(value)
}

let airportNames = Array<String>(airports.values)
let airportKeys = [String](airports.keys)
