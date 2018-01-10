import UIKit

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number: Int = 5
let result = 5.squared()

extension BinaryInteger {
    func squared() -> Self {
        return self * self
    }
}

let number2: UInt = 4
let result2 = 4.squared()

protocol Payable {
//    func calculateWages() -> Int
}

extension Payable {
    func calculateWages() -> Int {
        return 10000
    }
}

struct Surgeon {}

extension Surgeon: Payable {
    func calculateWages() -> Int {
        return 20000
    }
}

let gregory = Surgeon()
gregory.calculateWages()

let doogie: Payable = Surgeon()
doogie.calculateWages()
