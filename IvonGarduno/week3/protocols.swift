import UIKit

//Protocols

/* UN PROTOCOLO DEFINE UN MODELO DE METODOS, PROPIEDADES Y OTROS 
    REQUISITOS QUE SE ADAPTAN A UNA PIEZA DE FUNCIONALIDAD 

    PUEDE SER ADOPTADO POR UNA CLASE, ESTRUCTURA O ENUMERACION Y SI
    ESTAS SATISFACEN LOS REQUISITOS DE ESTE, SE DICE QUE SE AJUSTA A EL */


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