//
//  Coordinates.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

enum Rank: Int {
    case zero = 0, one, two, three,
         four, five, six, seven
}

enum File: Int {
    case A = 0, B, C, D,
         E, F, G, H
}

struct Coordinates {
    let file: File
    let rank: Rank
}
