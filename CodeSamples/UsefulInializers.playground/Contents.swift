//: Playground - noun: a place where people can play

import UIKit

let heading = "This is a heading"
let underline = String(repeating: "=", count: heading.count)
let equalsArray = [String](repeating: "=", count: heading.count)
var board = [[String]](repeating: [String](repeating: "", count: 10), count: 10)
let str3 = String(28, radix: 16, uppercase: true)
let int4 = Int(str3, radix: 16)
let scores = [5, 3, 6, 1, 3, 5, 3, 9]
let scoresSet = Set(scores)
let uniqueScores = Array(scoresSet)
var dictionary = Dictionary<String, String>(minimumCapacity: 100)
