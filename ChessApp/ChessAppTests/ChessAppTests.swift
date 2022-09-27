//
//  ChessAppTests.swift
//  ChessAppTests
//
//  Created by 김지선 on 2022/09/27.
//

import XCTest
@testable import ChessApp

class ChessAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBoard_WhenInitialized() throws {
        // Mock이 없이 상태기반 테스트를 하고 싶은 경우 property access level = private 어렵다.. 다른 방법이 생각나지 않는다...
        let board = Board().pawns
        
        // two: all black, seven: all white, others: all nil
        // 각 rank마다 check하고 assert message를 설정해주는게 좋을까
        var isExpected = true
        board.enumerated().forEach { (rank, pawns) in
            if rank == Rank.two.rawValue {
                if !testPawns(pawns: pawns, expected: .black) {
                    isExpected = false
                }
            } else if rank == Rank.seven.rawValue {
                if !testPawns(pawns: pawns, expected: .white) {
                    isExpected = false
                }
            } else {
                if !testPawns(pawns: pawns, expected: nil) {
                    isExpected = false
                }
            }
        }
        
        XCTAssertTrue(isExpected)
    }
    
    // MARK: private method
    private func testPawns(pawns: [Pawn?], expected: PlayerType?) -> Bool {
        var isExpected = true
        pawns.forEach { pawn in
            if pawn?.player != expected {
                isExpected = false
            }
        }
        
        return isExpected
    }
}
