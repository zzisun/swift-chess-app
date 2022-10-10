//
//  Rook.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/10.
//

import Foundation

protocol Rook: Piece {}

extension Rook {
  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError> {
    let difference = to - from
    
    guard difference.file * difference.rank == 0 else {
      return .failure(.notUpToPieceRule)
    }
    
    return .success(true)
  }
}

final class WhiteRook: Rook {
  var symbol: String {
    "♖"
  }
}

final class BlackRook: Rook {
  var symbol: String {
    "♜"
  }
}
