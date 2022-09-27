//
//  ChessMatch.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/28.
//

import Foundation

struct Match {
    // MARK: Property
    let player: Playerable
    var board: Board
    
    init(player: Playerable) {
        self.player = player
        self.board = Board()
    }
    
    mutating func start() {
        let input = player.move()
        board.move(type: player.type, current: input.current, next: input.next)
    }
}
