//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct Point {
    let x: Double
    let y: Double
}

enum DistanceTechnique {
    case euclidean
    case euclideanSquared
    case manhattan
}

func calculateDistance(start: Point, end: Point, technique: DistanceTechnique) -> Double {
    
    func calculateEuclideanDistanceSquared() -> Double {
        let deltaX = start.x - end.x
        let deltaY = start.y - end.y
        
        return deltaX * deltaX + deltaY * deltaY
    }
    
    func calculateEuclideanDistance() -> Double {
        return sqrt(calculateEuclideanDistanceSquared())
    }
    
    func calculateManhattanDistance() -> Double {
        return abs(start.x - end.x) + abs(start.y - end.y)
    }
    
    switch technique {
    case .euclidean:
        return calculateEuclideanDistance()
    case .euclideanSquared:
        return calculateEuclideanDistanceSquared()
    case .manhattan:
        return calculateManhattanDistance()
    }
}

let distance = calculateDistance(start: Point(x: 10, y: 10), end: Point(x: 100, y: 100), technique: .manhattan)
