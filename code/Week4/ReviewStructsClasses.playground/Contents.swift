import UIKit

//Structs vs Classes

/*
    
    Structs -> pass by value (copy)
    Classes -> pass by reference (memory address)
 
*/

struct User {
    var name: String
}

let user1 = User(name: "user 1")
var user2 = user1
user2.name = "user 2"

print(user1.name)
print(user2.name)

class ObservedObject {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}
let object1 = ObservedObject(value: 35)
let object2 = object1 //passing the memory address of object1 to object2
object2.value = 40

print(object1.value)
print(object2.value)












//Encodable & Codable -> Protocols for JSON mapping to a Struct and viceversa
let json = """
{
    "manufacturer": "Boeing",
    "model": "787",
    "number_of_seats": 150
}
""".data(using: .utf8)!
print(json)
//print(plane.manufacturer) -> Boeing
//struct Plane: Decodable, Encodable {
//    var manufacturer: String
//    var model: String
//    var seats: Int
//
//    init (manufacturer: String, model: String, seats: Int) {
//        self.manufacturer = manufacturer
//        self.model = model
//        self.seats = seats
//    }
//
//    private enum CodingKeys: String, CodingKey {
//        case manufacturer
//        case model
//        case seats
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.manufacturer = try container.decode(String.self, forKey: .manufacturer)
//        self.model = try container.decode(String.self, forKey: .model)
//        self.seats = try container.decode(Int.self, forKey: .seats)
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(self.manufacturer, forKey: .manufacturer)
//        try container.encode(self.model, forKey: .model)
//        try container.encode(self.seats, forKey: .seats)
//    }
//}
//
//let decoder = JSONDecoder()
//let plane = try! decoder.decode(Plane.self, from: json)
//print(plane.manufacturer)
//print(plane.model)
//print(plane.seats)
//
//let encoder = JSONEncoder()
//let secondPlane = Plane(manufacturer: "Airbus", model: "780", seats: 230)
//let anotherJSON = try! encoder.encode(secondPlane)
//print(String(data: anotherJSON, encoding: .utf8)!)


struct Plane2: Codable {
    var manufacturer: String
    var model: String
    var numberOfSeats: Int
}

let secondDecoder = JSONDecoder()
//number_of_seats -> snake_case
//numberOfSeats -> lowerCamelCase
secondDecoder.keyDecodingStrategy = .convertFromSnakeCase
let plane2 = try! secondDecoder.decode(Plane2.self, from: json)
print(plane2.manufacturer)
print(plane2.model)
print(plane2.numberOfSeats)

let secondEncoder = JSONEncoder()
let secondJSON = try! secondEncoder.encode(plane2)
print(String(data: secondJSON, encoding: .utf8)!)
