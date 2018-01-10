import UIKit
import Foundation

var names = ["Taylor", "Timothy", "Tyler", "Thomas", "Tobias", "Tabitha"]
let numbers = [5, 3, 1, 9, 5, 2, 7, 8]
let sorted = names.sorted()

names.sort {
    print("Comparing \($0) and \($1)")
    if ($0 == "Taylor") {
        return true
    } else if $1 == "Taylor" {
        return false
    } else {
        return $0 < $1
    }
}

let lowest = numbers.min()
let highest = numbers.max()

struct Dog: Comparable {
    var breed: String
    var age: Int
    
    static func <(lhs: Dog, rhs: Dog) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func ==(lhs: Dog, rhs: Dog) -> Bool {
        return lhs.age == rhs.age
    }
}

let poppy = Dog(breed: "Poodle", age: 5)
let rusty = Dog(breed: "Labrador", age: 2)
let rover = Dog(breed: "Corgi", age: 11)
var dogs = [poppy, rusty, rover]

//dogs.sort()

let beethoven = Dog(breed: "St Bernard", age: 8)
dogs += [beethoven]

if let dog = dogs.popLast() {
    print(dog)
}

var start = CFAbsoluteTimeGetCurrent()

var array = Array(1...1_000_000)
array.reserveCapacity(1_000_000)
array.reserveCapacity(1_000_000)

var end = CFAbsoluteTimeGetCurrent() - start
print("Took \(end) seconds")

let array2 = Array<Int>(1...1_000_000)
let array3 = ContiguousArray<Int>(1...1_000_000)
start = CFAbsoluteTimeGetCurrent()
array2.reduce(0, +)
end = CFAbsoluteTimeGetCurrent() - start
print("Took \(end) seconds")
start = CFAbsoluteTimeGetCurrent()
array3.reduce(0, +)
end = CFAbsoluteTimeGetCurrent() - start
print("Took \(end) seconds")
