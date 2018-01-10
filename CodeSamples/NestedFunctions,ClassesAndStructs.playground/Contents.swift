//: Playground - noun: a place where people can play

import UIKit

enum London {
    static let coordinates = (lat: 51.507222, long: -0.1275)
    
    enum SubwayLines {
        case bakerloo, central, circle, district, elizabeth, hammersmithCity, jubilee, metropolitan, northern, piccadilly, victoria, waterlooCity
    }
    
    enum Places {
        case buckinghamPalace, cityHall, oldBailey, piccadilly, stPaulsCathedral
    }
}

London.Places.cityHall

enum R {
    enum Storyboards: String {
        case main, detail, upgrade, share, help
    }
    
    enum Images: String {
        case welcome, home, about, button
    }
}

R.Images.button

struct Cat {
    enum Breed {
        case britishShortHair, burmese, persian, ragdoll, russianBlue, scottishFold, siamese
    }
    
    var name: String
    var breed: Breed
}

struct Deck {
    struct Card {
        enum Suit {
            case hearts, diamonds, clubs, spades
        }
        
        var rank: Int
        var suit: Suit
    }
    var cards = [Card]()
}
