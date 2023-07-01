//
//  SliderView.swift
//  SUIPlusUIKit
//
//  Created by Sergei Bakhmatov on 01.07.2023.
//

import SwiftUI

struct SliderView: View {
    
    @ObservedObject var gameModel: GameModel()
    
    var color: UIColor
    
    var body: some View {
        
        VStack {
            let targetValue = gameModel.gameOptions.targetValue
            
            Text("Подвинь слайдер, как можно ближе к \(targetValue)")
            HStack {
                Text("0")
                UISliderRepresentation(
                    value: $gameModel.gameOptions.currentValue,
                    alpha: gameModel.alpha,
                    color: color
                )
                Text("100")
            }
            .padding()
        }
        
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
