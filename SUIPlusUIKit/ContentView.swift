//
//  ContentView.swift
//  SUIPlusUIKit
//
//  Created by Sergei Bakhmatov on 01.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var gameModel = GameModel()
    
    var body: some View {
        VStack {
            
            SliderView(gameModel: gameModel, color: .red)
            
            Button("Проверь меня!", action: gameModel.showAlert)
                .padding()
                .alert(
                    "Your Score",
                    isPresented: $gameModel.alertIsPresented,
                    actions: {}
                ) {
                    Text(gameModel.scores.formatted())
                }
            Button("Начать заново", action: gameModel.reset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
