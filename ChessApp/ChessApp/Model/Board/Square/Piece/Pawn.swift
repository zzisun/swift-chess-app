//
//  Pawn.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

protocol Pawn: Piece {}

final class WhitePawn: Pawn {
  var symbol: String {
    "♙"
  }

  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError> {
    let difference = to - from
    guard !to.isGreaterRank(from),
          difference.file == 0,
          difference.rank == 1 else {
      return .failure(.notUpToPieceRule)
    }
    
    return .success(true)
  }
}

final class BlackPawn: Pawn {
  var symbol: String {
    "♟"
  }

  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError> {
    let difference = to - from
    guard to.isGreaterRank(from),
          difference.file == 0,
          difference.rank == 1 else {
      return .failure(.notUpToPieceRule)
    }
    
    return .success(true)
  }
}
