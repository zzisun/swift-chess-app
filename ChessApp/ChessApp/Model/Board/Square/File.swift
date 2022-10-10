//
//  File.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/10.
//
import Foundation

struct File: Comparable, Equatable {
  private let value: Int
  private var range = 0..<Constants.length
  
  init(_ value: Character) throws {
    if let asciiValue = value.asciiValue,
       let baseAsciiValue = Character("A").asciiValue,
       range ~= Int(asciiValue) - Int(baseAsciiValue) {
      self.value = Int(asciiValue - baseAsciiValue)
    } else {
      throw ChessError.invalidFile
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
