//
//  Score.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/28.
//

import Foundation

struct Score {
    private var black: Int = 0
    private var white: Int = 0
    
    mutating func update(black: Int, white: Int) {
        self.black = black
        self.white = white
    }
}
