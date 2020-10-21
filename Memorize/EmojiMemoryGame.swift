//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by KNG001 on 10/21/20.
//

import SwiftUI



class EmojiMemoryGame {
    private var gameModel: MemoryGame<String> = createMemeoryGame()
    
    static func createMemeoryGame() -> MemoryGame<String> {
        let emojis : Array<String> = ["👻","🎃", "🕷"]
        return MemoryGame<String>(numberOfParsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    // MARK: - Access to the Model
    var cards : Array<MemoryGame<String>.Card> {
        gameModel.cards
    }
    
    
    // MARK: - Intents(s)
    func choose(card: MemoryGame<String>.Card) {
        gameModel.choose(card: card)
    }
}
