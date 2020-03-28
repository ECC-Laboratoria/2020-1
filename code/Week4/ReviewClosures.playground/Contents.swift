import UIKit

//Closures

func reading(bookTitle: String, bookClosure: (String) -> String) {
    let bookMsg = bookClosure(bookTitle)
    print("The book message is: \(bookMsg)")
}

//Trailing Closure Syntax
reading(bookTitle: "The Design of Everyday Things") { (title: String) -> String in
    return "I'm reading \(title)"
}
