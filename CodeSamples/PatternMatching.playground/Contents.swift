//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

let name: String? = "twostraws"
let password: String?  = "fr0st1es"
let authentication = (name: "twostraws", password: "fr0st1es", ipAddress: "127.0.0.1")

switch authentication {
case ("bilbo", "bagg1n5", _):
    print("Hello, Bilbo Baggins!")
case ("twostraws", let password, _):
    print("Hello, Yurec: your password was \(password)!")
default:
    print("Who are you?")
}

func fizzBuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, true):
        return "FizzBuzz"
    case (true, false):
        return "Fizz";
    case (false, true):
        return "Buzz"
    default:
        return String(number)
    }
}

print(fizzBuzz(number: 9))

let twostraws = (name: "twostraws", password: "fr0st1es")
let bilbo = (name: "bilbo", password: "bagg1n5")
let taylor = (name: "taylor", password: "fr0st1es")

let users = [twostraws, bilbo, taylor]

for user in users {
    print(user.name)
}

for case ("twostraws", "fr0st1es") in users {
    print("User twostraws has password fr0st1es")
}

for case (let name, let password) in users {
    print("\(name) has password \(password)")
}

for case let (name, password) in users {
    print("\(name) has password \(password)")
}

for case let (name, "fr0st1es") in users {
    print("\(name) has password fr0st1es")
}

switch (name, password) {
case let (.some(matchedName), .some(matchedPassword)):
    print("hello, \(matchedName)")
case let(.some(matchedName), .none):
    print("please enter password.")
default:
    print("Who are you?")
}

switch (name, password) {
case let (name?, password?):
    print("Hello, \(name)")
case let (username?, nil):
    print("Please enter a password.")
default:
    print("Who are you?")
}

let data: [Any?] = ["Bill", nil, 69, "Ted"]

for case let .some(datum) in data {
    print(datum)
}

let age = 36

switch age {
case 0 ..< 18:
    print("You have energy and time, but not the money")
case 18 ..< 70:
    print("You have energy and money, but not the time")
default:
    print("You have the time and money, but not the energy")
}

if 0 ..< 18 ~= age {
    print("You have energy and time, but not the money")
} else if 18 ..< 70 ~= age {
    print("You have energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

if (0 ..< 18).contains(age) {
    print("You have energy and time, but not the money")
} else if (18 ..< 70).contains(age) {
    print("You have energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

let user = (name: "twostraws", password: "fr0st1es", age: 36)

switch user {
case let (name, _, 0 ..< 18):
    print("\(name) has energy and time, but not the money")
case let (name, _, 18 ..< 70):
    print("\(name) has energy and money, but not the time")
case let (name, _, _):
    print("\(name) has the time and money, but not the energy")
}

enum WeatherType {
    case cloudy(coverage: Int)
    case sunny
    case windy
}

let today = WeatherType.cloudy(coverage: 54)

switch today {
case .cloudy(let coverage) where coverage == 0:
    print("You must live in a Death Valley")
case .cloudy(let coverage) where (1...50).contains(coverage):
    print("It's a bit cloudy with \(coverage)% coverage")
case .cloudy(let coverage) where (51...99).contains(coverage):
    print("It's very cloudy with \(coverage)% coverage")
case .cloudy(let coverage) where coverage == 100:
    print("You must live in Belarus")
case .sunny:
    print("It's sunny")
default:
    print("It's windy")
}

let forecast: [WeatherType] = [.cloudy(coverage: 40), .sunny, .windy, .cloudy(coverage: 100), .sunny]

for case let .cloudy(coverage) in forecast {
    print("It's cloudy with \(coverage)% coverage")
}

let view: AnyObject = UIButton()

switch view {
case is UIView:
    print("found view")
case is UIButton:
    print("found a button")
case is UILabel:
    print("found label")
default:
    print("found something else")
}

let label = UILabel()
label.text = "test"
view.addSubview(label)

for case let label as UILabel in view.subviews {
    print("found a label with text \(label.text)")
}

let numbers = [11, 42, 526, 626, 623, 62, 8665, 3454, 7374, 6547]

for number in numbers where number % 2 == 1 {
    print(number)
}

let celebrities = ["Michael Jackson" , "Taylor Swift", nil, "Michael Caine"]

for case let name? in celebrities where name.hasPrefix("Michael"){
    print(name)
}
