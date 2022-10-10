////
////  MockPlayer.swift
////  ChessAppTests
////
////  Created by 김지선 on 2022/09/28.
////
//
//import Foundation
//@testable import ChessApp
//
//final class MockPlayerA: Playerable {
//    let type: PlayerType = .black
//    var moveCallCount = 0
//    let current = Coordinates(file: .A, rank: .two)
//    let next = Coordinates(file: .A, rank: .three)
//
//    func move() -> (current: Coordinates, next: Coordinates) {
//        moveCallCount += 1
//        return (current, next)
//    }
//}
//
//final class MockPlayerB: Playerable {
//    let type: PlayerType = .black
//    var moveCallCount = 0
//    let current = Coordinates(file: .A, rank: .two)
//    let next = Coordinates(file: .B, rank: .two)
//
//    func move() -> (current: Coordinates, next: Coordinates) {
//        moveCallCount += 1
//        return (current, next)
//    }
//}
//
//final class MockPlayerC: Playerable {
//    let type: PlayerType = .black
//    var moveCallCount = 0
//    let current = Coordinates(file: .A, rank: .three)
//    let next = Coordinates(file: .A, rank: .two)
//
//    func move() -> (current: Coordinates, next: Coordinates) {
//        moveCallCount += 1
//        return (current, next)
//    }
//}
