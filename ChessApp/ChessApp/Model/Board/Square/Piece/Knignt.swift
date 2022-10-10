//
//  Knignt.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/10.
//

import Foundation

protocol Knignt: Piece {}

extension Knignt {
  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError> {
    let difference = to - from
    
    guard (difference.file == 1 && difference.rank == 2) ||
          (difference.file == 2 && difference.rank == 1) else {
      return .failure(.notUpToPieceRule)
    }
    
    return .success(true)
  }
}

final class WhiteKnignt: Knignt {
  var symbol: String {
    "♘"
  }
}

final class BlackKnignt: Knignt {
  var symbol: String {
    "♞"
  }
}
