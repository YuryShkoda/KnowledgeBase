import UIKit
import Foundation

var set1 = Set<Int>([1, 2, 3, 4, 5])
var set2 = Set(1...100)
set1.insert(6)
set1.insert(7)

if set1.contains(3) {
    set1.remove(3)
}

var array1 = Array(set1)
var set3 = Set(array1)

for number in set1.sorted() {
    print(number)
}

let spaceships1 = Set(["Serenity", "Nostromo", "Enterprise"])
let spaceships2 = Set(["Voyager", "Serenity", "Executor"])
let spaceships3 = Set(["Galactica", "Sulaco", "Minbari"])
let union = spaceships1.union(spaceships2)
let intersection = spaceships1.intersection(spaceships2)
let difference = spaceships1.symmetricDifference(spaceships2)
let spaceships1and2 = spaceships1.union(spaceships2)

spaceships1.isSubset(of: spaceships1and2)
spaceships1.isSubset(of: spaceships1)
spaceships1.isSubset(of: spaceships2)
spaceships1.isStrictSubset(of: spaceships1and2)
spaceships1.isStrictSubset(of: spaceships1)
spaceships1and2.isSuperset(of: spaceships2)
spaceships1and2.isSuperset(of: spaceships3)
spaceships1and2.isStrictSuperset(of: spaceships1)
spaceships1.isDisjoint(with: spaceships2)

var spaceships = ["Serenity", "Nostromo", "Enterprise"]
spaceships += ["Voyager", "Serenity", "Executor"]
spaceships += ["Galactica", "Sulaco", "Minbari"]

let countedSet = NSCountedSet(array: spaceships)
print(countedSet.count(for: "Serenity"))
print(countedSet.count(for: "Sulaco"))
print(String(describing: countedSet.allObjects))
