//
//  Board.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

struct Board {
    let length = 8
    var pawns: [[Pawn?]]
    
    init() {
        pawns = [[Pawn?]](repeating: [Pawn?](repeating: nil, count: length), count: length)
        configurePawns()
    }
    
    // MARK: Configuration
//    private func configurePlayer() {
//
//    }
    
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
    
//    func movePawn
//    input: player, coordinate
}
