//
//  Bishop.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/05.
//

import Foundation

protocol Bishop: Piece {}

extension Bishop {
  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError> {
    let difference = to - from
    // TODO: to == from 인 경우는 화면 터치 안되도록
    guard difference.file == difference.rank else {
      return .failure(.notUpToPieceRule)
    }
    
    return .success(true)
  }
}

final class WhiteBishop: Bishop {
  var symbol: String {
    "♗"
  }
}

final class BlackBishop: Bishop {
  var symbol: String {
    "♝"
  }
}
