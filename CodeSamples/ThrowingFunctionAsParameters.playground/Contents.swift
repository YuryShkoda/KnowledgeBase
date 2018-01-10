import UIKit

func definitelyWantThrow() {
    print("Shiny!")
}

try definitelyWantThrow()

enum Failure: Error {
    case badNetWork(message: String)
    case broken
}

func fetchRemote() throws -> String {
    throw Failure.badNetWork(message: "Firewall blocked port.")
}

func fetchLocal() -> String {
    return "Yurec"
}

func fetchUserData(using closure: () throws -> String) rethrows {
        let userData = try closure()
        print("User data received: \(userData)")
}

do {
    try fetchUserData(using: fetchRemote)
} catch Failure.badNetWork(let message) {
    print(message)
} catch {
    print("Fetch error")
}
