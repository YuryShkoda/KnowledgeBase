import UIKit

enum Color: String {
    case unknown
    case blue
    case green
    case pink
    case purple
    case red
    
    var description: String {
        switch self {
        case .unknown:
            return "color of magic"
        case .blue:
            return "color of the sky"
        case .green:
            return "color of the grass"
        case .pink:
            return "color of the carnation"
        case .purple:
            return "color of the rain"
        case .red:
            return "color of desire"
        }
    }
    
    func forBoys() -> Bool {
        return true
    }
    
    func forGirls() -> Bool {
        return true
    }
}

struct Toy {
    let name: String
    let color: Color
}

let barbie = Toy(name: "Barbie", color: .pink)
let raceCar = Toy(name: "BMW", color: .red)

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case unknowen
}

let marsNumber = Planet.mars.rawValue
let planet = Planet(rawValue: 222) ?? Planet.unknowen

let pink = Color.pink.rawValue

print("The \(barbie.name) toy is \(barbie.color.description)")
print("The \(barbie.name) toy is \(barbie.color.rawValue.uppercased())")

