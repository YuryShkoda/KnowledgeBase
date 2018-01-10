import UIKit

let range = 1...100
let i = 42

if range ~= i {
    print("Match")
}

let test1 = (1...100).contains(42)
let test2 = 1...100 ~= 42
