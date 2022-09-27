//
//  Player.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

protocol Player {
    func move(previous: String, next: String) // FIXME: String -> Coordinates
}

class MockPlayer: Player {
    var cookRamenCallCount = 0

    func move(previous: String, next: String) {
        
    }
}
