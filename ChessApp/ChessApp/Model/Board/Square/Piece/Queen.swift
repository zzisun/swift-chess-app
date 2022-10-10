//
//  Queen.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/10.
//

import Foundation

protocol Queen: Piece {}

extension Queen {
  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError> {
    let difference = to - from
    
    guard (difference.file * difference.rank == 0) ||
          (difference.file == difference.rank) else {
      return .failure(.notUpToPieceRule)
    }
    
    return .success(true)
  }
}

final class WhiteQueen: Queen {
  var symbol: String {
    "♕"
  }
}

final class BlackQueen: Queen {
  var symbol: String {
    "♛"
  }
}
