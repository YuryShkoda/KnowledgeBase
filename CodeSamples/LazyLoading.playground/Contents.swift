import UIKit

class MusicPlayer {
    init() {
        print("Ready to play songs!")
    }
}

class Singer {
    let name: String
    static let musicPlayer = MusicPlayer()

    //    lazy var reversedName: String = {
//        return "\(self.name.uppercased()) backwards is \(String(self.name.uppercased().reversed()))!"
//    }()

    lazy var reversedName: String = self.getReversedName()
    
    private func getReversedName() -> String {
        return "\(self.name.uppercased()) backwards is \(String(self.name.uppercased().reversed()))!"
    }
    
    init(name: String) {
        self.name = name
    }
}

let taylor = Singer(name: "Taylor Swift")
print(taylor.reversedName)
Singer.musicPlayer

func fibonacci(of num: Int) -> Int {
    if num < 2 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}

//let fibonacciSequence = (0...20).map(fibonacci)
//print(fibonacciSequence[10])

let lazyFibonacciSequence = Array(0...199).lazy.map(fibonacci)
print(lazyFibonacciSequence[19])
