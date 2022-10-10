//
//  Square.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//
typealias Difference = (file: Int, rank: Int) // FIXME: File, Rank

struct Square {
  private let file: File
  private let rank: Rank
  var piece: Piece
  
  init(file: File, rank: Rank) {
    self.file = file
    self.rank = rank
    self.piece = Empty()
  }
  
  static func - (lhs: Self, rhs: Self) -> Difference {
    let fileDifference = abs(lhs.file - rhs.file)
    let rankDifference = abs(lhs.rank - rhs.rank)
    return (fileDifference, rankDifference)
  }
  
  func isGreaterRank(_ than: Square) -> Bool {
    self.rank > than.rank
  }
}
