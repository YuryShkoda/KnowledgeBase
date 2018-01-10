import UIKit

var singer = (first: "Taylor",last: "Swift", address: ("555 Taylor Swift Avenue", "No, this isn't real", "Nashville"))
print(singer.2.2)
print(singer.last)

var singer2 = (first: "Taylor", last: "Swift", sing: {
    (lyrics: String) in
    print("\(lyrics)")
})

singer2.sing("haters gonna hate")

func featchWeather() -> (type: String, cloudCover: Int, high: Int, low: Int) {
    return ("Sunny", 50, 32, 26)
}

let weather = featchWeather()
print(weather.type)

let (type, cloud, high, low) = featchWeather()

let optionalElements: (String?, String?) = ("Taylor", nil)
let optionalTuple: (String, String)? = ("Taylor", "Swift")
let optionalBoth: (String?, String?)? = (nil, "Swift")

let singer3 = (first: "Taylor", last: "Swift")
let person = (first: "Justin", last: "Bieber")

if singer3 == person {
    print("Match")
} else {
    print("No match")
}

let father = (first: "Scott", last: "Swift")
let mother = (first: "Andrea", last: "Finlay")

typealias Name = (first: String, last: String)

func marryTaylorsParwnts(man: Name, woman: Name) -> (husband: Name, wife: Name) {
    return (man, (woman.first, man.last))
}

let r = marryTaylorsParwnts(man: father, woman: mother)
print(r)
