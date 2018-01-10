import UIKit

func *(lhs: [Int], rhs: [Int]) -> [Int] {
    precondition(lhs.count == rhs.count, "Arrays were not the same size")
    
    var result = [Int]()
    
    for (index, int) in lhs.enumerated() {
        result.append(int * rhs[index])
    }
    
    return result
}

let a = [1, 2, 3]
let b = [4, 5]
let c = a * b
