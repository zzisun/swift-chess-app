////
////  Bishop.swift
////  ChessApp
////
////  Created by 김지선 on 2022/10/05.
////
//
//import Foundation
//
//final class Bishop: Piece {
//    let player: PlayerType
//
//    init(player: PlayerType) {
//        self.player = player
//    }
//
//    func isPossibleToMove(from: Square, to: Square) -> Bool {
//        if self.player == .black {
//            guard to.rank.rawValue == from.rank.rawValue + 1 else { return false }
//        } else {
//            guard to.rank.rawValue == from.rank.rawValue - 1 else { return false }
//        }
//
//        return true
//    }
//}
