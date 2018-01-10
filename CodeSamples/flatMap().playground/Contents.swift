import UIKit

let numbers = [[1, 2], [3, 4], [5, 6]]
let joined = Array(numbers.joined())
print(joined)

let albums: [String?] = ["Fearless", nil, "Speak now", nil, "Red"]
let result1 = albums.map { $0 }
print(result1)
let result2 = albums.flatMap { $0 }
print(result2)

// Optional flat map

let scores = ["100", "90", "Fish", "85"]
let flatMapScores = scores.flatMap { Int($0) }
print(flatMapScores)

let files = (1...10).flatMap { try? String(contentsOfFile: "someFile-\($0).txt")}

let view = UIView()
let labels = view.subviews.flatMap { $0 as? UILabel }
