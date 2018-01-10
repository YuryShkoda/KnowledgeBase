import UIKit

struct PersonStruct {
    var name: String
    var age: Int
}

// variable struct: changing property and changing value OK
var taylor1 = PersonStruct(name: "Taylor Swift", age: 26)
taylor1.name = "Justin Bieber"
taylor1 = PersonStruct(name: "Justin Bieber", age: 22)

// Constant struct: changing property or value not allowed
let yurec = PersonStruct(name: "Yurec", age: 29)

//Will not compile
//yurec.name = "Yury"
//yurec = PersonStruct(name: "Justin Bieber", age: 22)

final class PersonClass {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// variable object: changing property and reference OK
var taylor = PersonClass(name: "taylor Swift", age: 26)
taylor.name = "Justin Bieber"
taylor = PersonClass(name: "Justin Bieber", age: 22)

// constant object: changing property OK, changing reference not allowed
let taylor2 = PersonClass(name: "taylor Swift", age: 26)
taylor2.name = "Justin Bieber"
//taylor2 = PersonClass(name: "Justin Bieber", age: 22)

