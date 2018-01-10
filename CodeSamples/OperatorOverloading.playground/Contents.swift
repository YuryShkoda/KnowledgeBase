import UIKit
import Foundation

func *(lhs: [Int], rhs: [Int]) -> [Int] {
    guard lhs.count == rhs.count else { return lhs }
    
    var result = [Int]()
    
    for (index, int) in lhs.enumerated() {
        result.append(int * rhs[index])
    }
    
    return result
}

let res = [1, 2, 3, 4] * [1, 2, 3, 6]

precedencegroup ExponentiationPrecedence {
    higherThan: MultiplicationPrecedence
    associativity: right
}

infix operator **:ExponentiationPrecedence

func **(lhs: Double, rhs: Double) -> Double {
    return pow(lhs, rhs)
}

let res1 = 2 ** 3 ** 2

precedencegroup RangeFormationPrecedence {
    associativity: left
    higherThan: CastingPrecedence
}

infix operator ... : RangeFormationPrecedence

func ...(lhs: CountableClosedRange<Int>, rhs: Int) -> [Int] {
    let dawnwards = (rhs ..< lhs.upperBound).reversed()
    
    return Array(lhs) + dawnwards
}

let range = 1...10...1
print(range)
