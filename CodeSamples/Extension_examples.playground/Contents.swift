import UIKit

// Example one: Squaring integers
import UIKit

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let i: Int = 8
print(i.squared())

extension BinaryInteger {
    func squared() -> Self {
        return self * self
    }
}

let j: UInt = 3
print(j.squared())

// Example two: Clamping integers

extension BinaryInteger {
    func clamp(low: Self, high: Self) -> Self {
        return min(max(self, low), high)
    }
}

print(800.clamp(low: 5, high: 100))

// Example three: Matching value types
extension Equatable {
    func matches(array items: [Self]) -> Bool {
        for item in items {
            if item != self {
                return false
            }
        }
        
        return true
    }
}

print(2.matches(array: [2, 2, 2, 2]))
print(2.matches(array: [2, 2, 2, 3]))

// Example four: Comparing arrays
extension Comparable {
    func lessThan(array items: [Self]) -> Bool {
        for item in items {
            if item <= self {
                return false
            }
        }
        
        return true
    }
}

print(5.lessThan(array: [6, 7, 8]))
print(5.lessThan(array: [5, 6, 7]))
print("cat".lessThan(array: ["dog", "fish", "gorrila"]))

// Example five: Rewriting contains()
extension Collection where Iterator.Element: Equatable {
    func myContains(element: Iterator.Element) -> Bool {
        for item in self {
            if item == element {
                return true
            }
        }
        
        return false
    }
}

// Example six: Fuzzy array matching
extension Collection where Iterator.Element: Comparable {
    func fuzzyMatches(_ other: Self) -> Bool {
        let usSorted = self.sorted()
        let otherSorted = other.sorted()
        
        return usSorted == otherSorted
    }
}

[1, 2, 3].fuzzyMatches([1, 2, 3])
[1, 2, 3].fuzzyMatches([3, 2, 1])
[1, 2, 3].fuzzyMatches([1, 2])
[1, 2, 3].fuzzyMatches([1, 2, 3, 1])

// Example seven: average string length
extension Collection where Iterator.Element == String {
    func averageLength() -> Double {
        var sum = 0
        var count = 0
        
        self.forEach {
            sum += $0.count
            count += 1
        }
        
        return Double(sum) / Double(count)
    }
}

["cat", "dog", "fish", "elephant"].averageLength()

// Example eight: counting integers
extension Collection where Iterator.Element == Int {
    func numberOf5s() -> Int {
        var count = 0
        
        for item in self {
            let str = String(describing: item)
            for letter in str {
                if letter == "5" {
                    count += 1
                }
            }
        }
        return count
    }
}

[5, 3, 5, 1, 5].numberOf5s()
[5, 15].numberOf5s()
[5, 15, 55, 555].numberOf5s()
[555, 555, 555].numberOf5s()

// Example nine: De-duping an array
extension Array where Element: Equatable {
    func uniqueValues() -> [Element] {
        var result = [Element]()
        
        for item in self {
            if !result.contains(item) {
                result.append(item)
            }
        }
        
        return result
    }
}

// Example ten: Array is sorted
extension Array where Element: Comparable {
    func isSorted() -> Bool {
        return self == self.sorted()
    }
}

[1, 3, 5].isSorted()
[5, 3, 1].isSorted()
