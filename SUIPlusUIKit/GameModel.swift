//
//  GameModel.swift
//  SUIPlusUIKit
//
//  Created by Sergei Bakhmatov on 01.07.2023.
//

import Foundation

final class GameModel: ObservableObject {
    
    @Published var gameOptions = GameOptions()
    @Published var alertIsPresented = false
    
    var scores: Int {
        100 - abs(gameOptions.targetValue - lround(gameOptions.currentValue))
    }
    
    var alpha: Double {
        (100 - abs(Double(gameOptions.targetValue) - gameOptions.currentValue)) / 100
    }
    
    func showAlert() {
        alertIsPresented.toggle()
    }
    
    func reset() {
        gameOptions.currentValue = Double.random(in: 0...100)
        gameOptions.targetValue = Int.random(in: 0...100)
    }
    
}
