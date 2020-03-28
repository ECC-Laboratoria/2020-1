//OPERADORES ARITMETICOS
//import UIkit

/* Suma  (+), Resta (-), Multiplicación(*) y división(/)*/

//OPERADORES DE ASIGNACION COMPUESTA

var a = 1
a += 2  // con esto a es igual a 3
print(a)

//OPERADORES DE COMPARACIÓN

/* Es igual a (a == b)
   No es igual a (a != b)
   Mayor que (a > b)
   MEnor que (a < b)
   Mayor o igual que (a >= b)
   Menor o igual que (a <= b)*/

   // los operadores se utilizan casi siempre con funciones condicionales ejem:
   let name = "World"
     if name == "world" {
       print("hello, world")
      } else {
    print("Lo siento \(name), pero no se reconocen como igaual")
}


//TERNARY CONDITIONAL OPERATOR
/*Este operador nos ayuda porque puede contener dos opciones de respuesta deacuerdo a la pregunta realizada*/
let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}

//otra manera de expresar o sintetizarlo es el sig1uiente en caso de correrlo favor de comentar esta o la eo código de arriba
/*let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20) // nos ahorramos varias lineas de codigo porque se utiliza la misma variable solo que contantidades distintas se puede declarar una de frente de la otra
*/


//NIL-C0ALESCING OPERATOR u Operador de Difusión nula

/*Es un opcional para indicarle a la variable que contiene un valor o en su defecto devuelve un valor determinado y este puede ser nullo
la primera variable es siempre de tipo opcional y la segunda variable su valor debe coincidir con el tipo se almacena dentro de la primera*/

//Su sintaxis es:
//a != nil ? a! : b

//En el siguiente ejemplo se utiliza para elegir entre un nombre de color predeterminado y opcional que definio el usuario
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)



//HALF-OPEN RANGE OPERATOR

/*El operador de rango medio abierto (a .. <b) define un rango que va de a a b, pero no incluye b. 
Se dice que está medio abierto porque contiene su primer valor, pero no su valor final. 
Al igual que con el operador de rango cerrado, el valor de a no debe ser mayor que b. 
Si el valor de a es igual a b, el rango resultante estará vacío.*/

//Ejemplo de uso
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("La persona \(i + 1) se llama \(names[i])")
}



//OPERADORES  LOGICOS

/*NOT (!a)
  AND (a && b)
  OR (a || b)*/

//OPERADOR LOGICO NOT
/*Se utiliza para volores Boolenos con solo dos posibles respuestas False o true.
Se utiliza para indicar que el tipo de dato es diferente
ejemplo*/

let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

//OPERADOR LOGICO AND
/*Crea expresiones lógicas donde ambos valores deben ser verdaderos o iguales 
para que la expresión general también sea verdadera.
ejemplo de uso*/

let enteredDoorCode = true
let passedRetinaScan = false  
if enteredDoorCode && passedRetinaScan {
    print("Welcome!") // se imprimie este resultado cualdo las dos variables son iguales
} else {
    print("ACCESS DENIED")
}

//OPERADOR LOGICO OR
/*Es un operador infijo formado por dos caracteres. 
Lo usa para crear expresiones lógicas en las que solo uno de los dos valores 
tiene que ser verdadero para que la expresión general sea verdadera.
ejemplo de uso*/

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}