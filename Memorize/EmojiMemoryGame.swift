//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jacob Stephens on 5/24/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🔥", "🥶", "🤯", "🤑", "👹","🤠","😈","🎃","👾","👽","🤡","💩","👻","✊","😀","😃","😄","😇","🥰","😛","🥵","🤬","🥶","🤢","🥴","🤐","😵‍💫","😵","😱","🤤"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 25) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
       
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    
    // MARK: - INTENT(S)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    
}

