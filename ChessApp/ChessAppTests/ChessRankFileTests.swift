//
//  ChessPieceTests.swift
//  ChessAppTests
//
//  Created by 김지선 on 2022/10/05.
//

import XCTest
@testable import ChessApp

final class ChessRankFileTests: XCTestCase {
  var rank1: Rank!
  var rank2: Rank!
  
  override func setUpWithError() throws {
    rank1 = try Rank(value: "1")
    rank2 = try Rank(value: "2")
  }
  
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
    XCTAssertNotEqual(rank1, rank2)
  }
  
  func test_Rank1더하기Rank2는_1이다() throws {
    let expected = 1
    XCTAssertEqual(rank1 + rank2, expected)
  }
  
  func test_Rank2빼기Rank1는_1이다() throws {
    let expected = 1
    XCTAssertEqual(rank2 - rank1, expected)
  }
  
  func test_Rank2는Rank1보다_크다() throws {
    XCTAssertGreaterThan(rank2, rank1)
  }
}
