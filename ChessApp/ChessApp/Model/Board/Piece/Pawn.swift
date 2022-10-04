//
//  Pawn.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

final class Pawn: Piece {
    let player: PlayerType
    
    init(player: PlayerType) {
        self.player = player
    }
    
    func isPossibleToMove(from: Square, to: Square) -> Bool {
        // 다형성 with playerType 을 위해 BlackPawn, WhitePawn을 생성하는 방법밖에 없는 걸까?
        if self.player == .black {
            guard to.rank == from.rank + 1 else { return false }
        } else {
            guard to.rank.rawValue == from.rank.rawValue - 1 else { return false }
        }
        
        return true
    }
}
