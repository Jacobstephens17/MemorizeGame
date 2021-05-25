//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jacob Stephens on 5/24/21.
//

import SwiftUI

class EmojiMemoryGame {
    
    static let emojis = ["🔥", "🥶", "🤯", "🤑", "👹","🤠","😈","🎃","👾","👽","🤡","💩","👻","✊"]
    
    private var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}

