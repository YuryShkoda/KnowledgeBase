import UIKit

let scoresString = ["100", "95", "85", "90", "100"]

let sortedString = scoresString.sorted()
print(sortedString)

let scoresInt = scoresString.flatMap { Int($0) }
let sortedInt = scoresInt.sorted()
print(sortedInt)

let sortedString2 = scoresString.sorted {
    if let first = Int($0), let second = Int($1) {
        return first < second
    } else {
        return false
    }
}
print(sortedString2)

let scoresInt2 = scoresString.map { Int($0) }
let sortedInt2 = scoresInt2.sorted {
    if let unwrappedFirst = $0, let unwrappedSecond = $1 {
        return unwrappedFirst < unwrappedSecond
    } else {
        return false
    }
}
print(sortedInt2)

// Sorting complex data

struct Person: Comparable {
    var name: String
    var age: Int
    
    static func <(lhs: Person, rhs: Person) -> Bool {
        return lhs.name < rhs.name
    }
    
    static func ==(rhs: Person, lhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

let taylor = Person(name: "Taylor", age: 26)
let paul = Person(name: "Paul", age: 36)
let justin = Person(name: "Justin", age: 22)
let adele = Person(name: "Adele", age: 27)
let people = [taylor, paul, justin, adele]

//let sortedPeople = people.sorted { $0.name < $1.name }
let sortedPeople = people.sorted()
print(sortedPeople)

// Reverse sorting

let names = ["Taylor", "Paul", "Adele", "Justin"]
print(names)
let sorted = names.sorted().reversed()
//let sorted = Array(names.sorted().reversed())
print(sorted)
