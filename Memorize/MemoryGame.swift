//
//  MemoryGame.swift
//  Memorize
//
//  Created by KNG001 on 10/21/20.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen is: \(card)")
    }
    
    init(numberOfParsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfParsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
    }
    
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
