//
//  Player.swift
//  ChessApp
//
//  Created by 김지선 on 2022/09/27.
//

import Foundation

protocol Playerable {
    var type: PlayerType { get }
    func move() -> (current: Coordinates, next: Coordinates)
}
