//
//  MemoryGame.swift
//  Memorize
//
//  Created by santochaoya on 27/09/20.
//  Copyright © 2020 Xiao. All rights reserved.
//
//  Model of Memory Game

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            
            cards.append(Card(isFaceUp: false, isMatched: false, content: <#T##CardContent#>))
            cards.append(Card(isFaceUp: false, isMatched: false, content: <#T##CardContent#>))
        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
