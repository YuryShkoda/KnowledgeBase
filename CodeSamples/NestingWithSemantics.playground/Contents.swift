//: Playground - noun: a place where people can play

import UIKit

struct Deck {
    struct Card {
        private enum Suit {
            case hearts, diamonds, clubs, spades
        }
        
        var rank: Int
        private var suit: Suit
    }
    var cards = [Card]()
}
