import UIKit

//Basic Operators

1 + 2
3 / 4
4 - 2
7 * 2

10 % 3

let three = 3
let minusThree = -three
let plusThree = -minusThree

//Binary compariso operators
let name = "world"
if name == "world" {
    print("hello, \(name)")
} else {
    print(":(")
}


let a = 10
let b = 20

if a != b {
    print("welcome")
} else {
    print("I'm sorry")
}


/*
    = : assignment
    == : equality
    === : extrictly equal
 */

(1, "zebra", 244) < (2, "apple", 134)
(2, "zz") == (2, "zz")

//Ternary Conditional Operator
// conditional ? answer1 : answer2

let contentHeight = 40
let hasHeader = false
var rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight)

if contentHeight == 50 {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}

//Nil-Coalescing Operator
let defaultColorName = "red"
let userDefinedColor: String? = nil
let colorNameToUse = userDefinedColor ?? defaultColorName
print(colorNameToUse)


let a_: Int? = nil //type annotation
let b_ = 20
let c_ = a_ ?? b_


//Java: String var someVar = "something"
//Swift: var someVar: String = "something"




//Range Operators
print("\n\n\n\n\n\n\n")
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
//..<
//..>
//...
for i in 0...(count-1) {
    print("Person \(i + 1) is called \(names[i])")
}
for name in names[..<2] {
    print(name)
}
let range = ...10
range.contains(19)
range.contains(2)



