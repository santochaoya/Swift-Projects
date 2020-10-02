//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by santochaoya on 27/09/20.
//  Copyright © 2020 Xiao. All rights reserved.
//  View Model

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        // return different emoji cards
        let emojis: Array<String> = ["🥇", "🧤", "👒", "🐸", "🌮", "🏠"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in
            return emojis[pariIndex]
        }
    }
    
    // MARK: - Access to Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
         
    }
}
 
