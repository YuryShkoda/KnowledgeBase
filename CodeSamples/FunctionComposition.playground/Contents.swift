import UIKit

let london = (name: "London", continent: "Europe", population: 8_539_000)
let paris = (name: "Paris", continent: "Europe", population: 2_244_000)
let lisbon = (name: "Lisbon", continent: "Europe", population: 530_000)
let rome = (name: "Rome", continent: "Europe", population: 2_627_000)
let tokyo = (name: "Tokyo", continent: "Asia", population: 13_350_000)

let cities = [london, paris, lisbon, rome, tokyo]

let population = cities.reduce(0) { $0 + $1.population }
print(population)
let europePopulation = cities.filter { $0.continent == "Europe" }.reduce(0) { $0 + $1.population }
print(europePopulation)

let biggestCities = cities.filter { $0.population > 2_000_000 }.sorted { $0.population > $1.population }.prefix(upTo: 3).map { "\($0.name) is a big city, with a population of \($0.population)" }.joined(separator: "\n")
print(biggestCities)

// Functional building blocks
precedencegroup CompositionPrecedence {
    associativity: left
}

infix operator >>>: CompositionPrecedence

func >>> <T, U, V>(lhs: @escaping (T) -> U, rhs: @escaping (U) -> V) -> (T) -> V {
    return { rhs(lhs($0)) }
}

func generateRandomNumber(max: Int) -> Int {
    let number = Int(arc4random_uniform(UInt32(max)))
    print("Using number \(number)")
    return number
}

func calculateFactors(number: Int) -> [Int] {
    return (1...number).filter { number % $0 == 0 }
}

func reduceToString(numbers: [Int]) -> String {
    return numbers.reduce("Factors: ") { $0 + String($1) + " " }
}

let result = reduceToString(numbers: calculateFactors(number: generateRandomNumber(max: 100)))
print(result)

let combined = generateRandomNumber >>> calculateFactors >>> reduceToString
print(combined(100))
