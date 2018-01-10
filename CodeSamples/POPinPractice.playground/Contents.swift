import UIKit

protocol Payable {
    func calculateWages() -> Int
}
extension Payable {
    func calculateWages() -> Int {
        return 10000
    }
}

protocol ProvideTreatment {
    func treat(name: String)
}
extension ProvideTreatment {
    func treat(name: String) {
        print("I have treated \(name)")
    }
}

protocol ProvideDiagnosis {
    func diagnose() -> String
}
extension ProvideDiagnosis {
    func diagnose() -> String {
        return "He's dead Jim"
    }
}

protocol ConductSurgery {
    func performSurgery()
}
extension ConductSurgery {
    func performSurgery() {
        print("Success!")
    }
}

protocol HasRestTime {
    func takeBreak()
}
extension HasRestTime {
    func takeBreak() {
        print("Time to watch TV")
    }
}

protocol NeedsTraining {
    func study()
}
extension NeedsTraining {
    func study() {
        print("I'm reading a book")
    }
}

struct Receptionist {}
struct Nurse {}
struct Doctor {}
struct Surgeon {}

protocol Employee: Payable, HasRestTime, NeedsTraining {}
extension Employee {
    func checkInsurance() {
        print("Yup, I'm totally insured")
    }
}

extension Receptionist: Employee {}
extension Nurse: Employee, ProvideTreatment {}
extension Doctor: Employee, ProvideDiagnosis, ProvideTreatment {}
extension Surgeon: Employee, ProvideDiagnosis, ConductSurgery {}

// Constrained extension
extension Collection where Iterator.Element: BinaryInteger {
    func countOddEven() -> (odd: Int, even: Int) {
        var even = 0
        var odd = 0
        
        for val in self {
            if val % 2 == 0 {
                even += 1
            } else {
                odd += 1
            }
        }
        
        return (odd: odd, even: even)
    }
}
