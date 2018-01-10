import UIKit
import Foundation

func inspectString(_ value: String) {
    print("Received String with value \(value)")
}

inspectString("Haters gonna hate")

func inspectInt(_ value: Int) {
    print("Received Int with value \(value)")
}

inspectInt(42)

// Can work with one data type only
func inspect<T>(_ value1: T,_ value2: T) {
    print("1.Received \(type(of: value1)) with value \(value1)")
    print("2.Received \(type(of: value2)) with value \(value2)")
}

//inspect("Hello", 25)
func inspectAny(_ value1: Any, _ value2: Any) {
    print("1.Received \(type(of: value1)) with value \(value1)")
    print("2.Received \(type(of: value2)) with value \(value2)")
}

inspectAny("Hello", 32)

func square<T: Numeric>(_ value: T) -> T {
    return value * value
}

square(42)
square(42.52352)

struct deque<T> {
    var array = [T]()
    
    mutating func pushBack(_ obj: T) {
        array.append(obj)
    }
    
    mutating func pushFront(_ obj: T) {
        array.insert(obj, at: 0)
    }
    
    mutating func popBack() -> T? {
        return array.popLast()
    }
    
    mutating func popFront() -> T? {
        if array.isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}

var testDeque = deque<Int>()
testDeque.pushBack(5)
testDeque.pushFront(2)
testDeque.pushFront(1)
print(testDeque)
testDeque.popBack()
print(testDeque)
testDeque.popFront()
print(testDeque)

struct CustomCountedSet<T: Any> {
    let internalSet = NSCountedSet()
    
    mutating func add(_ obj: T) {
        internalSet.add(obj)
    }
    
    mutating func remove(_ obj: T) {
        internalSet.remove(obj)
    }
    
    func count(for obj: T) -> Int {
        return internalSet.count(for: obj)
    }
}

var countedSet = CustomCountedSet<String>()
countedSet.add("Hello")
countedSet.add("hi")
countedSet.add("Hello")
countedSet.count(for: "Hello")

var countedSet2 = CustomCountedSet<Int>()
countedSet2.add(5)
countedSet2.count(for: 5)
