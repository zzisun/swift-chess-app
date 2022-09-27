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
        let mockPlayer = MockPlayer(type: .black)
        let board = Match(player: mockPlayer).board
        
        // two: all black, seven: all white, others: all nil
        // 각 rank마다 check하고 assert message를 설정해주는게 좋을까
        board.currentState().enumerated().forEach { (rank, pawns) in
            if rank == Rank.two.rawValue {
                pawns.forEach { pawn in
                    XCTAssertEqual(pawn, Pawn(player: .black))
                }
            } else if rank == Rank.seven.rawValue {
                pawns.forEach { pawn in
                    XCTAssertEqual(pawn, Pawn(player: .white))
                }
            } else {
                pawns.forEach { pawn in
                    XCTAssertEqual(pawn, nil)
                }
            }
        }
    }
    
    func testBoard_WhenPlayerMovePawn() throws {
        let mockPlayer = MockPlayer(type: .black)
        var match = Match(player: mockPlayer)
        let previousBoard = match.board
        let expectedCurrentPawn: Pawn? = nil
        let expectedNextPawn: Pawn? = Pawn(player: mockPlayer.type)

        match.start()
        XCTAssertEqual(mockPlayer.moveCallCount, 1)
        XCTAssertEqual(match.board.pawn(coordinates: mockPlayer.current), expectedCurrentPawn)
        
        let board = match.board
        board.currentState().enumerated().forEach { (rank, pawns) in
            pawns.enumerated().forEach { (file, pawn) in
                let coordinates = Coordinates(file: File(rawValue: file)!, rank: Rank(rawValue: rank)!)
                if coordinates == mockPlayer.current {
                    XCTAssertEqual(board.pawn(coordinates: mockPlayer.current), expectedCurrentPawn)
                } else if coordinates == mockPlayer.next {
                    XCTAssertEqual(board.pawn(coordinates: mockPlayer.next), expectedNextPawn)
                } else {
                    XCTAssertEqual(board.pawn(coordinates: coordinates), previousBoard.pawn(coordinates: coordinates))
                }
            }
        }
    }
}
