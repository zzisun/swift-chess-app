////
////  ChessAppTests.swift
////  ChessAppTests
////
////  Created by 김지선 on 2022/09/27.
////
//
//import XCTest
//@testable import ChessApp
//
//final class ChessBoardTests: XCTestCase {
//func test_Square_Difference() throws {
//  let fileA = try File("A")
//  let fileB = try File("B")
//  let rank1 = try Rank("1")
//  let rank2 = try Rank("2")
//  let A1 = Square(file: fileA, rank: rank1)
//  let B2 = Square(file: fileB, rank: rank2)
//  let expected = (file: 1, rank: 1)
//
//  let difference = B2 - A1
//  XCTAssertEqual(difference.file, expected.file)
//  XCTAssertEqual(difference.rank, expected.rank)
//}
//
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testBoard_WhenInitialized() throws {
//        let stubPlayer = MockPlayerA()
//        let board = Match(player: stubPlayer).currentBoard()
//
//        board.currentState().enumerated().forEach { (rank, pawns) in
//            if rank == Rank.two.rawValue {
//                pawns.forEach { pawn in
//                    XCTAssertEqual(pawn, Pawn(player: .black))
//                }
//            } else if rank == Rank.seven.rawValue {
//                pawns.forEach { pawn in
//                    XCTAssertEqual(pawn, Pawn(player: .white))
//                }
//            } else {
//                pawns.forEach { pawn in
//                    XCTAssertEqual(pawn, nil)
//                }
//            }
//        }
//    }
//
//    func testBoard_WhenPlayerMovesPawn() throws {
//        let mockPlayer = MockPlayerA()
//        var match = Match(player: mockPlayer)
//        let previousBoard = match.currentBoard()
//        let expectedCurrentPawn: Pawn? = nil
//        let expectedNextPawn: Pawn? = Pawn(player: mockPlayer.type)
//
//        match.start()
//
//        XCTAssertEqual(mockPlayer.moveCallCount, 1)
//        let board = match.currentBoard()
//        board.currentState().enumerated().forEach { (rank, pawns) in
//            pawns.enumerated().forEach { (file, pawn) in
//                let coordinates = Coordinates(file: File(rawValue: file)!, rank: Rank(rawValue: rank)!)
//                if coordinates == mockPlayer.current {
//                    XCTAssertEqual(board.pawn(coordinates: mockPlayer.current), expectedCurrentPawn)
//                } else if coordinates == mockPlayer.next {
//                    XCTAssertEqual(board.pawn(coordinates: mockPlayer.next), expectedNextPawn)
//                } else {
//                    XCTAssertEqual(board.pawn(coordinates: coordinates), previousBoard.pawn(coordinates: coordinates))
//                }
//            }
//        }
//    }
//
//    func testBoard_WhenPlayerMovesPawn_ToTheSameRank() throws {
//        let mockPlayer = MockPlayerB()
//        var match = Match(player: mockPlayer)
//        let previousBoard = match.currentBoard()
//
//        match.start()
//
//        XCTAssertEqual(mockPlayer.moveCallCount, 1)
//        let board = match.currentBoard()
//        board.currentState().enumerated().forEach { (rank, pawns) in
//            pawns.enumerated().forEach { (file, pawn) in
//                let coordinates = Coordinates(file: File(rawValue: file)!, rank: Rank(rawValue: rank)!)
//                XCTAssertEqual(board.pawn(coordinates: coordinates), previousBoard.pawn(coordinates: coordinates))
//            }
//        }
//    }
//
//    func testBoard_WhenPlayerMovesPawn_ToTheOppossiteRank() throws {
//        let mockPlayer = MockPlayerC()
//        var match = Match(player: mockPlayer)
//        let previousBoard = match.currentBoard()
//
//        match.start()
//
//        XCTAssertEqual(mockPlayer.moveCallCount, 1)
//        let board = match.currentBoard()
//        board.currentState().enumerated().forEach { (rank, pawns) in
//            pawns.enumerated().forEach { (file, pawn) in
//                let coordinates = Coordinates(file: File(rawValue: file)!, rank: Rank(rawValue: rank)!)
//                XCTAssertEqual(board.pawn(coordinates: coordinates), previousBoard.pawn(coordinates: coordinates))
//            }
//        }
//    }
//}
