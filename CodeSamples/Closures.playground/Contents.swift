import UIKit
import Foundation

let greetPerson = { (name: String) in
    print("Hello, \(name)!")
}

greetPerson("Yurec")

let greetCopy = greetPerson
greetCopy("Yurec")

func runSomeClosure(_ closure: (String) -> Void) {
    closure("Yury")
}

runSomeClosure(greetPerson)

func testCapture() -> () -> Void {
    var counter = 0
    
    return {
        counter += 1
        print("Counter is now \(counter)")
    }
}

let greetPerson1 = testCapture()
greetPerson1()
greetPerson1()
greetPerson1()

let greetCopy1 = greetPerson1
greetCopy1()
greetPerson1()
greetCopy1()

let names = ["Michael Jackson", "Taylor Swift", "Michael Caine", "Adele Adkins", "Michael Jordan"]

let result1 = names.filter({ (name: String) -> Bool in
    if name.hasPrefix("Michael") {
        return true
    } else {
        return false
    }
})

let result2 = names.filter({ name in
    if name.hasPrefix("Michael") {
        return true
    } else {
        return false
    }
})

let result3 = names.filter({ name in
    return name.hasPrefix("Michael")
})

let result4 = names.filter { name in
    return name.hasPrefix("Michael")
}

let result5 = names.filter { name in
    name.hasPrefix("Michael")
}

let result6 = names.filter {
    $0.hasPrefix("Michael")
}

let result7 = names.filter { $0.hasPrefix("Michael") }

let input = "My favorite album is Fearless"
input.contains("album")

let words = ["1989", "Fearless", "Red"]
words.contains(where: input.contains)

let numbers = [1, 3, 5, 7, 9]
let res = numbers.reduce(0) { (int1, int2) -> Int in
    return int1 + int2
}
print(res)
let res2 = numbers.reduce(0, +)
print(res2)

// Escaping closures

var queuedClosures: [() -> Void] = []

func queueClosure(_ closure: @escaping () -> Void) {
    queuedClosures.append(closure)
}

queueClosure({ print("Running closure 1") })
queueClosure({ print("Running closure 2") })
queueClosure({ print("Running closure 3") })

func executeQueuedClosures() {
    for closure in queuedClosures {
        closure()
    }
}

executeQueuedClosures()

// @autoclosure

func printTest(_ result: @autoclosure () -> Void) {
    print("Before")
    result()
    print("After")
}

printTest(print("Hello"))

assert(1 == 1, "Math failure!")
//assert(1 == 2, "Math failure!")

func queueClosure2(_ closure: @autoclosure @escaping () -> Void) {
    queuedClosures.append(closure)
}

