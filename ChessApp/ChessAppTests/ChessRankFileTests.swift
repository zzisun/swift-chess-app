//
//  ChessPieceTests.swift
//  ChessAppTests
//
//  Created by 김지선 on 2022/10/05.
//

import XCTest
@testable import ChessApp

final class ChessRankFileTests: XCTestCase {
  func test_Rank1은_오류를던지지않는다() throws {
    let input: Character = "1"
    XCTAssertNoThrow(try Rank(value: input))
  }
  
  func test_유효하지않은Rank는_오류를던진다() throws {
    let input: Character = "A"
    let expected: ChessError = .invalidRank
    
    XCTAssertThrowsError(try Rank(value: input)) { result in
      XCTAssertEqual(result as? ChessError, expected)
    }
  }
  
  func test_FileA는_오류를던지지않는다() throws {
    let input: Character = "A"
    XCTAssertNoThrow(try File(value: input))
  }
  
  func test_유효하지않은File은_오류를던진다() throws {
    let input: Character = "1"
    let expected: ChessError = .invalidFile
    
    XCTAssertThrowsError(try File(value: input)) { result in
      XCTAssertEqual(result as? ChessError, expected)
    }
  }
  
  func test_Rank1과Rank2는_다르다() throws {
    let l = try Rank(value: "1")
    let r = try Rank(value: "2")
    XCTAssertNotEqual(l, r)
  }
  
  func test_Rank1더하기Rank2는_1이다() throws {
    let l = try Rank(value: "1")
    let r = try Rank(value: "2")
    let expected = 1
    XCTAssertEqual(l + r, expected)
  }
  
  func test_Rank2빼기Rank1는_1이다() throws {
    let l = try Rank(value: "2")
    let r = try Rank(value: "1")
    let expected = 1
    XCTAssertEqual(l - r, expected)
  }
  
  func test_Rank2는Rank1보다_크다() throws {
    let l = try Rank(value: "2")
    let r = try Rank(value: "1")
    XCTAssertGreaterThan(l, r)
  }
}
