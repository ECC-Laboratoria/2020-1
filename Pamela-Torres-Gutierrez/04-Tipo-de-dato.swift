//import UIkit

//NUMEROS ENTEROS

/*Estos pueden ser sin signo o con signo.
 y pueden tener una Herencia natural de #C
  de 8 bits, 16 bits, 32 bits y 34 bits*/

  let age : UInt8 = 31

  //Numero entero sin signo más pequeño de 8bits es 0
  let minValue = UInt8.min  // 2^0-1

  //Número entero sin signo más grande de 8bits es 255
  let maxValue = UInt8.max  //2^8-1

  /*Buena practa optimizar al maximo posible el espacio en memoria
  que voy a utilizar a mi applicación*/

  
  //FLOATS Y DOUBLES NUMEROS CON DECIMALES

  /*Floats: Número flotante decimales de 32bits, se utiliza para notaciones cientificas
    Double: Números decimales de 64bits, tiene el doble de presición*/

let f1: Float = 3.1459265
let d1: Double = 3.14159265
print(f1, d1)

let meaningOfLife = 42 //Int
let pi = 3.141592  //Double
let anotherPi = 3 + 0.14159  // swift internamente puede realizar opereaciones entre enteros y decimales
print(meaningOfLife)
print(pi)
print(anotherPi)



//NUMEROS LITERALES PARA MANEJAR TIPOS DE DATO AUDIO

let decimalInteger = 17  //1*10 + 7Expresarlo en base 10
let binaryInterger = 0b10001  // 1*2^4+00*2^3+0*2^2+0*2^1+1*2^0 Numero en binario
print(decimalInteger, binaryInterger)

let octalInteger = 0o21 //2*8^1+1*8^0
//base utilizada en imagenes hexademical
let hexademicalInteger = 0x11 //1*16^1+1*16^0

//con Swift se pueden separ los miles, millones, etc con barra baja
let paddedDouble = 000123.456
print(paddedDouble)

let someNumber = 0000000000097.54
print(someNumber)

let oneMillion = 1_000_000
print(oneMillion)

let justMoreThanAMillion = 1_000_000.000_000_1
print(justMoreThanAMillion)

//Si un entero no puede ser negarigo se tiene que defir

//ERROR DE TIPO DE DATO
//let canNotBeNegative : UInt8 = -1  //esto garantizaria que nunca coloquen otro tipo de nuero que no declare
//print(canNotBeNegative)


//CONVERTIR TIPOS DE DATOS

//Se utiliza Casting es una transformación dado un dato entero o decimal o cualquier tipo de dato
//se puede castear a otro tipo de dato

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
//let twoThousandAndOne = twoThousand + one  //lo recomendable es convertir UInt8 a UInt16 "Numca convertir los dos a 32bits o 64 bits porque desperdeciariamos mucho espacio en memoria"
let twoThousandAndOne = twoThousand + UInt16(one)
print(twoThousandAndOne)

//otro ejemplo
let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber
print("El resultado de conversión es: \(piNum)")


// TYPE ALIAS
/*Nos ayuda para dar alias a nuestra variables para audio o video y es una buena practica tener ShortCards,
nos sirve para adaptar los tipos de datos a mi necesidad de dato*/

//Datos guardados en el movil y casi siempre estos archivos son de 16bits

typealias AudioSample = UInt16 //En caso de que en un futuro mi app se actualiza y la longitud de mis datos cambia a 32bits, solo tengo que cambiar mi alias y todas las variables
var maxAmplitude = AudioSample.max // UInt16.mx


// TIPOS DE DATOS  BOOLENOS
/*Tipo de dato verdadero o falso, para cumplirse dos condiones a la vez, o solo una*/

let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool 

isAged = false

if isAged { 
    print("Puedes entrar a la fiesta") // Solo puesdo entrar aqui si isAged == true
}else { 
    print("No puedes entrar a la fiesta")//Solo puede entrar aqui si iasAged == false
}












