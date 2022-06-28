//
//  Deck.swift
//  PlayingCardsKit
//
//  Created by Ryan Hill on 18/05/2022.
//

import Foundation

public class Deck {
    let configuration: DeckConfiguration
    public var deck: [Card] = []
    var pack: Int = 0

    public init(configuration: DeckConfiguration = .default) {
        self.configuration = configuration
        self.deck = createDeck(from: configuration)
    }

    private func createDeck(from configuration: DeckConfiguration) -> [Card] {

        for pack in 1...configuration.numberOfPacks {
            for suit in configuration.includeSuits {
                for value in configuration.includeValues {
                    deck.append(ValueCard(value: value, suit: suit, packIdentifier: String(pack)))
                    self.pack = pack
                }
            }

            if configuration.numberOfJokers > 0 {
                for joker in 1...configuration.numberOfJokers {
                    deck.append(JokerCard(packIdentifier: String(pack), jokerNumber: joker))
                }
            }
        }

        deck.forEach({ print($0.cardIdentifier) })

        return deck
    }

}
