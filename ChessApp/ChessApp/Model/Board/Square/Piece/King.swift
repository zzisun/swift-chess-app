//
//  King.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/10.
//

import Foundation

protocol King: Piece {}

extension King {
  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError> {
    let difference = to - from
    guard difference.file + difference.rank <= 2 else {
      return .failure(.notUpToPieceRule)
    }
    
    return .success(true)
  }
}

final class WhiteKing: King {
  var symbol: String {
    "♔"
  }
}

final class BlackKing: King {
  var symbol: String {
    "♚"
  }
}
