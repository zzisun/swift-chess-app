//
//  Board.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

struct Board {
    // MARK: Property
    let player: Playerable
    let length = 8
    var pawns: [[Pawn?]]
    
    init(player: Playerable) {
        self.player = player
        self.pawns = [[Pawn?]](repeating: [Pawn?](repeating: nil, count: length), count: length)
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
            pawns[rank.rawValue][file] = Pawn(player: type)
        }
    }
    
    mutating func startGame() {
        let input = player.move()
        move(type: player.type, current: input.current, next: input.next)
    }

    private mutating func move(type: PlayerType, current: Coordinates, next: Coordinates) {
        guard isPossibleToMove(type: type, current: current, next: next) else { return }
        
        let nextPawn = pawn(coordinates: next)
        guard nextPawn?.player != type else { return }
        
        let currentPawn = pawn(coordinates: current)
        pawns[current.rank.rawValue][current.file.rawValue] = nil
        pawns[next.rank.rawValue][next.file.rawValue] = currentPawn
    }

    private func isPossibleToMove(type: PlayerType, current: Coordinates, next: Coordinates) -> Bool {
        if type == .black {
            guard next.rank.rawValue == current.rank.rawValue + 1 else { return false }
        } else {
            guard next.rank.rawValue == current.rank.rawValue - 1 else { return false }
        }
        
        return true
    }
    
    func pawn(coordinates: Coordinates) -> Pawn? {
        let rank = coordinates.rank.rawValue
        let file = coordinates.file.rawValue
        return pawns[rank][file]
    }

    // countScore
}
