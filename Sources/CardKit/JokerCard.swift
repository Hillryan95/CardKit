//
//  JokerCard.swift
//  PlayingCardsKit
//
//  Created by Ryan Hill on 18/05/2022.
//

import Foundation

struct JokerCard: Card {
    let packIdentifier: String
    let cardIdentifier: String
    let jokerNumber: Int

    init(packIdentifier: String = "1", jokerNumber: Int) {
        self.packIdentifier = packIdentifier
        self.jokerNumber = jokerNumber
        self.cardIdentifier = "\(packIdentifier)-Jo-\(String(jokerNumber))"
    }
}
