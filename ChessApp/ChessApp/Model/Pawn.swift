//
//  Pawn.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

struct Pawn: Equatable {
    let player: PlayerType
    
    init(player: PlayerType) {
        self.player = player
    }
}
