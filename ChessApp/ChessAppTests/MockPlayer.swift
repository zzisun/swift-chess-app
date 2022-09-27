//
//  MockPlayer.swift
//  ChessAppTests
//
//  Created by 김지선 on 2022/09/28.
//

import Foundation
@testable import ChessApp

final class MockPlayer: Playerable {
    let type: PlayerType
    var moveCallCount = 0
    let current = Coordinates(file: .A, rank: .two)
    let next = Coordinates(file: .A, rank: .three)
    
    init(type: PlayerType) {
        self.type = type
    }

    func move() -> (current: Coordinates, next: Coordinates) {
        moveCallCount += 1
        return (current, next)
    }
}
