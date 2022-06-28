//
//  ValueCard.swift
//  PlayingCardsKit
//
//  Created by Ryan Hill on 18/05/2022.
//

import Foundation

struct ValueCard: Card {
    let value: CardValue
    let suit: CardSuit
    let packIdentifier: String
    let cardIdentifier: String

    init(value: CardValue, suit: CardSuit, packIdentifier: String = "1") {
        self.value = value
        self.suit = suit
        self.packIdentifier = packIdentifier

        self.cardIdentifier = "\(packIdentifier)-\(value.displayValue)-\(suit.displayValue)"
    }
}
