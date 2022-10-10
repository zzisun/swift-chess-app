//
//  File.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/10.
//

import Foundation

import Foundation

struct File {
  let value: Int
  private var range = 0..<Constants.length
  
  init(value: Character) throws {
    if let intValue = value.wholeNumberValue,
       range ~= intValue - 1 {
      self.value = intValue - 1
    } else {
      throw ChessError.invalidFile
    }
  }
}
