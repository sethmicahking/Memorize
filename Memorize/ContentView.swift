//
//  ContentView.swift
//  Memorize
//
//  Created by KNG001 on 10/21/20.
//

import SwiftUI

struct ContentView: View {
    var gameViewModel: EmojiMemoryGame
    var body: some View {
        HStack {
            ForEach(gameViewModel.cards) { card in
                ZStack {
                    CardView(card: card).onTapGesture {
                        gameViewModel.choose(card: card)
                    }
                }
                .padding()
                .foregroundColor(Color.orange)
                .font(Font.largeTitle)
            }
        }
    }
}



struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        if(card.isFaceUp) {
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
            Text(card.content)
        }
        else {
            RoundedRectangle(cornerRadius: 10.0).fill()
         
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(gameViewModel: EmojiMemoryGame())
            ContentView(gameViewModel: EmojiMemoryGame())
        }
    }
}
