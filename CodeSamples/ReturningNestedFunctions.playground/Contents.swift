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

func createDistanceAlgoritm(technique: DistanceTechnique) -> (Point, Point) -> Double {
    func calculateEuclideanDistanceSquared(start: Point, end: Point) -> Double {
        let deltaX = start.x - end.x
        let deltaY = start.y - end.y
        
        return deltaX * deltaX + deltaY * deltaY
    }
    
    func calculateEuclideanDistance(start: Point, end: Point) -> Double {
        return sqrt(calculateEuclideanDistanceSquared(start: start, end: end))
    }
    
    func calculateManhattanDistance(start: Point, end: Point) -> Double {
        return abs(start.x - end.y) + abs(start.y - end.y)
    }
    
    switch technique {
    case .euclidean:
        return calculateEuclideanDistance
    case .euclideanSquared:
        return calculateEuclideanDistanceSquared
    case .manhattan:
        return calculateManhattanDistance
    }
}

let distanceAlgoritm = createDistanceAlgoritm(technique: .manhattan)
let distance = distanceAlgoritm(Point(x: 10, y: 10), Point(x: 100, y: 100))
