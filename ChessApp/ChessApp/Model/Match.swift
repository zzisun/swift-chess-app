////
////  ChessMatch.swift
////  ChessApp
////
////  Created by 김지선 on 2022/09/28.
////
//
//import Foundation
//
//struct Match {
//    // MARK: Property
//    private let whiteplayer: Playerable
//    private let blackplayer: Playerable
//    private var currentPlayer: Playerable
//    private var board: Board
//    private var score: Score
//    
//    init(whiteplayer: Playerable, blackplayer: Playerable) {
//        self.whiteplayer = whiteplayer
//        self.blackplayer = blackplayer
//        self.board = Board()
//        self.score = Score()
//        configurePlayer()
//    }
//    
//    private mutating func configurePlayer() {
//        self.currentPlayer = whiteplayer
//    }
//    
//    private mutating func rotatePlayer() {
//        if self.currentPlayer.type == .white {
//            self.currentPlayer = blackplayer
//        } else {
//            self.currentPlayer = whiteplayer
//        }
//    }
//    
//    mutating func start() {
//        for _ in (0..<Constants.maxMatchCount) { // FIXME:
//            
//        }
//        let input = player.move()
//        board.move(type: player.type, from: input.current, to: input.next)
//    }
//    
//    mutating func countScore() {
//        let black = board.countPawns(type: .black)
//        let white = board.countPawns(type: .white)
//        score.update(black: black, white: white)
//    }
//    
//    func currentBoard() -> Board {
//        return board
//    }
//    
//    func currentScore() -> Score {
//        return score
//    }
//}
