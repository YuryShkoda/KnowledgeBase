import UIKit
import Foundation

func lengthOf(strings: [String]) -> [Int] {
    return strings.map { $0.count }
}

let result = lengthOf(strings: ["Hi", "Hey", "Hello"])

let fruits = ["Apple", "Cherry", "Orange", "Pineapple"]
let upperFruits = fruits.map { $0.uppercased() }
print(upperFruits)

let scores = [100, 85, 80]

let formatted = scores.map { "Your score is \($0)" }
print(formatted)

let passOrFail = scores.map { $0 > 85 ? "Pass" : "Fail" }
print(passOrFail)

let position = [50, 60, 40]
let averageResults = position.map { 45...55 ~= $0 ? "Within average" : "Outside average" }
print(averageResults)

let numbers: [Double] = [4, 9, 25, 35, 49]
let result2 = numbers.map(sqrt)
print(result2)

// Optional map

let i: Int? = 10
let j = i.map { $0 * 2 }
print(j)

func fetchUserName(id: Int) -> String? {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

var username: String? = fetchUserName(id: 1989)
let formattedUsername = username.map { "Welcome, \($0)!" } ?? "Unknown user"
let formattedUsername2 = username != nil ? "Welcome, \(username!)!" : "Unknown user"
print(formattedUsername)
print(formattedUsername2)

// forEach

["Taylor", "Adele", "Paul"].forEach { print($0) }
