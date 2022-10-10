//
//  Rank.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/10.
//

import Foundation

struct Rank: Comparable, Equatable {
  // FIXME: propertywrapper 사용하면 error처리를 어떻게 해야할까
  private let value: Int
  private var range = 0..<Constants.length
  
  init(_ value: Character) throws {
    if let intValue = value.wholeNumberValue,
       range ~= intValue - 1 {
      self.value = intValue - 1
    } else {
      throw ChessError.invalidRank
    }
  }
  
  static func - (lhs: Self, rhs: Self) -> Int {
    lhs.value - rhs.value
  }
  
  static func < (lhs: Self, rhs: Self) -> Bool {
    lhs.value < rhs.value
  }
  
  static func == (lhs: Self, rhs: Self) -> Bool {
    lhs.value == rhs.value
  }
}
