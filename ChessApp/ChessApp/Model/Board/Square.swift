////
////  Square.swift
////  ChessApp
////
////  Created by 김지선 on 2022/09/27.
////
//
//import Foundation
//
//@propertyWrapper
//struct Coordinates: Equatable, Comparable { // FIXME: Rank, File 다시 만들기
//    private var range = 0..<Constants.length
//    private var value: Int?
//    var wrappedValue: Int? {
//        get { return value }
//        set {
//            if let value = value,
//               range ~= value {
//                self.value = value
//            } else {
//                self.value = nil
//            }
//        }
//    }
//    
//    init(value: String) {
//        self.value = Int(value)
//    }
//    
//    static func < (lhs: Coordinates, rhs: Coordinates) -> Bool {
//        guard let lhs = lhs.wrappedValue,
//              let rhs = rhs.wrappedValue else { return false }
//        return lhs < rhs
//    }
//    
//    static func == (lhs: Coordinates, rhs: Coordinates) -> Bool {
//        guard let lhs = lhs.wrappedValue,
//              let rhs = rhs.wrappedValue else { return false }
//        return lhs == rhs
//    }
//}
//
//struct Square: Equatable {
//    static func == (lhs: Square, rhs: Square) -> Bool {
//        return (lhs.file == rhs.file) && (lhs.rank == rhs.rank)
//    }
//    
//    let file: Coordinates
//    let rank: Coordinates
//    var piece: Piece?
//}
