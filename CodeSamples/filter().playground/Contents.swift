import UIKit
import Foundation

let fibonacciNumbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

let evenFibonacci = fibonacciNumbers.filter { $0 % 2 == 0 }
print(evenFibonacci)

let names = ["Michael Jackson", "Taylor Swift", "Michael Caine", "Adele Adkins", "Michael Jordan"]
let result1 = names.filter { $0.hasPrefix("Michael") }
print(result1)

let words = ["1989", "Fearless", "Red"]
let input = "My favorite album is Fearless"
let result2 = words.filter { input.contains($0) }
print(result2)

let words2 = ["1989", nil, "Fearless", nil, "Red"]
let result3 = words2.filter { $0 != nil }
print(result3)
