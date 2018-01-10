import UIKit

struct Person {
    var name: String
    var age: Int
    var favoriteIceCream: String
}

let yurec = Person(name: "Yurec", age: 29, favoriteIceCream: "Chocolate")

final class Box<T> {
    var value: T
    
    init(value: T) {
        self.value = value
    }
}

let box = Box<Person>(value: yurec)

final class TestContainer {
    var box: Box<Person>!
}

let container1 = TestContainer()
let container2 = TestContainer()
container1.box = box
container2.box = box
box.value.name = "Not Yurec"
print(container1.box.value.name)
print(container2.box.value.name)