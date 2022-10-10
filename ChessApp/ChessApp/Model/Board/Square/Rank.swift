//
//  Rank.swift
//  ChessApp
//
//  Created by 김지선 on 2022/10/10.
//

import Foundation

@propertyWrapper
struct Rank { // propertyWrapper error throws 어디서 해줘야 좋을까?
  private var value: Int
  private let range = 1...Constants.length
  
  init(value: Character) throws {
    if let intValue = value.wholeNumberValue,
       range ~= intValue {
      self.value = intValue
    } else {
      throw ChessError.invalidRank
    }
  }
  
  var wrappedValue: Int {
    get { return value }
    set { value = value - 1 }
  }
}

@propertyWrapper
struct MaxPriceOrLessWrapper {
  private var max: Int
  private var value: Int
  
  init(value: Int, maxPrice: Int) {
    self.max = maxPrice
    self.value = min(value, maxPrice)
  }
  
  var wrappedValue: Int {
    get { return value }
    set { value = min(newValue,max) }
  }
}
