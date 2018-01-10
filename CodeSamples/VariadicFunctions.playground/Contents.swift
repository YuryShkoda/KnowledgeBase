import UIKit

// Variadic functions are functions of indefinite arity, which is a fancy way of saying that they take as many parameters as you send.

print(1, 2, 3, 4, 5, 6, separator: ", ", terminator: "!")

func add(numbers: Int...) -> Int {
    var total = 0
    
    for number in numbers {
        total += number
    }
    
    return total
}

add(numbers: 1, 2, 3, 4, 5)
