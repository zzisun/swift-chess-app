//
//  Player.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

protocol Playerable {
    var type: PlayerType { get }
    func move() -> (current: Coordinates, next: Coordinates)
}

final class MockPlayer: Playerable {
    let type: PlayerType
    var moveCallCount = 0
    
    init(type: PlayerType) {
        self.type = type
    }

    func move() -> (current: Coordinates, next: Coordinates) {
        let current = Coordinates(file: .A, rank: .two)
        let next = Coordinates(file: .A, rank: .three)
        return (current, next)
    }
}

//final class Player: Playerable {
//    let type: PlayerType
//
//    init(type: PlayerType) {
//        self.type = type
//    }
//
//    func move() -> (Coordinates, Coordinates) {
//        return (current, next)
//    }
//
//}
