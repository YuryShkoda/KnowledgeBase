import UIKit

let scores = [100, 90, 95]
let sum = scores.reduce(0, +)

let result = scores.reduce("") { $0 + String($1) }
print(result)

let names = ["Taylor", "Paul", "Adele"]
let result2 = names.reduce(0) { $0 + $1.count }
print(result2)

let longEnough = names.reduce(true) { $0 && $1.count > 4 }
print(longEnough)

// Reducing to find a value
let longest = names.reduce("") { $1.count > $0.count ? $1 : $0 }
print(longest)
// Alternative
let longest2 = names.max { $1.count > $0.count }
print(longest2)

// Reducing a multi-dimensional array
let numbers = [
    [1, 1, 2],
    [3, 5, 8],
    [13, 21, 34]
]
let flattened: [Int] = numbers.reduce([]) { $0 + $1 }
print(flattened)
let flattened2 = numbers.flatMap { $0 }
print(flattened2)
let flattened3 = Array(numbers.joined())
print(flattened3)
