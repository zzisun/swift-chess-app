//
//  Empty.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/05.
//

import Foundation

final class Empty: Piece {
  var symbol: String {
    "."
  }
  
  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError> {
    return .failure(.noPieceToMove)
  }
}
