//
//  ChessMatch.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/28.
//

import Foundation

struct Match {
    // MARK: Property
    private let player: Playerable
    private var board: Board
    private var score: Score
    
    init(player: Playerable) {
        self.player = player
        self.board = Board()
        self.score = Score()
    }
    
    mutating func start() {
        let input = player.move()
        board.move(type: player.type, current: input.current, next: input.next)
    }
    
    mutating func countScore() {
        let black = board.countPawns(type: .black)
        let white = board.countPawns(type: .white)
        score.update(black: black, white: white)
    }
    
    func currentBoard() -> Board {
        return board
    }
    
    func currentScore() -> Score {
        return score
    }
}
