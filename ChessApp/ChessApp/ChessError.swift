//
//  Error.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/06.
//

import Foundation

enum ChessError: Error, CustomStringConvertible {
  case invalidRank
  case invalidFile
  case notUpToPieceRule
  case noPieceToMove
  case pieceInSamePlayer

  var description: String {
    switch self {
    case .invalidRank:
      return "올바르지 않은 Rank입니다."
    case .invalidFile:
      return "올바르지 않은 File입니다."
    case .notUpToPieceRule:
      return "해당 체스말이 이동할 수 없는 위치입니다."
    case .noPieceToMove:
      return "이동시킬 체스말이 없습니다."
    case .pieceInSamePlayer:
      return "이미 플레이어의 말이 존재합니다."
    }
  }
}
