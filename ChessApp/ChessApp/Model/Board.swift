//
//  Board.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

struct Board {
    private let length = 8
    private var board: [[Pawn?]]
    
    init() {
        self.board = [[Pawn?]](repeating: [Pawn?](repeating: nil, count: length), count: length)
        configurePawns()
    }
    
    // MARK: Configuration
    private mutating func configurePawns() {
        configurePawns(type: .black)
        configurePawns(type: .white)
    }
    
    private mutating func configurePawns(type: PlayerType) {
        let rank: Rank = type == .black ? .two : .seven

        (0..<length).forEach { file in
            board[rank.rawValue][file] = Pawn(player: type)
        }
    }

    private func isPossibleToMove(type: PlayerType, current: Coordinates, next: Coordinates) -> Bool {
        if type == .black {
            guard next.rank.rawValue == current.rank.rawValue + 1 else { return false }
        } else {
            guard next.rank.rawValue == current.rank.rawValue - 1 else { return false }
        }
        
        return true
    }

    mutating func move(type: PlayerType, current: Coordinates, next: Coordinates) {
        guard isPossibleToMove(type: type, current: current, next: next) else { return }
        
        let nextPawn = pawn(coordinates: next)
        guard nextPawn?.player != type else { return }
        
        let currentPawn = pawn(coordinates: current)
        board[current.rank.rawValue][current.file.rawValue] = nil
        board[next.rank.rawValue][next.file.rawValue] = currentPawn
    }
    
    func pawn(coordinates: Coordinates) -> Pawn? {
        let rank = coordinates.rank.rawValue
        let file = coordinates.file.rawValue
        return board[rank][file]
    }
    
    func currentState() -> [[Pawn?]] {
        return board
    }

    func countPawns(type: PlayerType) -> Int {
        return board.flatMap { $0 }
            .compactMap { $0 }
            .filter { $0.player == type }
            .count
    }
}
