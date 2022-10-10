//
//  Piece.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/04.
//

import Foundation

protocol Piece {
  var symbol: String { get }
  func isPossibleToMove(from: Square, to: Square) -> Result<Bool, ChessError>
}
