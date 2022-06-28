//
//  DeckConfiguration.swift
//  PlayingCardsKit
//
//  Created by Ryan Hill on 01/06/2022.
//

import Foundation

public struct DeckConfiguration {
    let includeValues: Set<CardValue>
    let includeSuits: Set<CardSuit>
    let numberOfJokers: Int
    let numberOfPacks: Int

    public init(includeValues: Set<CardValue> = Set(CardValue.allCases), includeSuits: Set<CardSuit> = Set(CardSuit.allCases), numberOfJokers: Int = 2, numberOfPacks: Int = 1) {
        self.includeValues = includeValues
        self.includeSuits = includeSuits
        self.numberOfJokers = numberOfJokers
        self.numberOfPacks = numberOfPacks
    }

    public static var `default`: DeckConfiguration {
        let configuration = DeckConfiguration(includeValues: Set(CardValue.allCases), includeSuits: Set(CardSuit.allCases), numberOfJokers: 2, numberOfPacks: 1)
        return configuration
    }
}
