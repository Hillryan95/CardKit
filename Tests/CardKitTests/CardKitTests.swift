//
//  CardKitTests.swift
//  CardKitTests
//
//  Created by Ryan Hill on 17/05/2022.
//

import XCTest
@testable import CardKit

class CardKitTests: XCTestCase {

    func testValueCardIsCreated() {
        // Given
        let sut = ValueCard(value: .two, suit: .hearts)

        // Then
        XCTAssertEqual(sut.cardIdentifier, "1-2-H")
    }

    func testCardCanBeCreatedFromSecondPack() {
        // Given
        let sut = ValueCard(value: .two, suit: .hearts, packIdentifier: "2")

        // Then
        XCTAssertEqual(sut.cardIdentifier, "2-2-H")

    }

    func testDefaultDeckConfiguration_13CardValues() {
        // Given
        let sut = Deck(configuration: .default)

        // Then
        XCTAssertEqual(sut.configuration.includeValues.count, 13)
    }

    func testDefaultDeckConfiguration_4CardSuits() {
        // Given
        let sut = Deck(configuration: .default)

        // Then
        XCTAssertEqual(sut.configuration.includeSuits.count, 4)
    }

    func testDefualtDeckConfiguration_Full54CardDeck() {
        // Given
        let sut = Deck(configuration: .default)

        // Then
        XCTAssertEqual(sut.deck.count, 54)
    }

    func testAllNumbers1Suit0Jokers1DeckReturns13Cards() {
        // Given
        let configuration = DeckConfiguration(includeValues: Set(CardValue.allCases), includeSuits: [.spades], numberOfJokers: 0, numberOfPacks: 1)
        let sut = Deck(configuration: configuration)

        // Then
        XCTAssertEqual(sut.deck.count, 13)
    }

    func testDeckWithOnePackWithTwoJokersDoesContainTwoJokersWithCorrectIdentifiers() {
        // Given
        let configuration = DeckConfiguration(includeValues: Set(CardValue.allCases), includeSuits: Set(CardSuit.allCases), numberOfJokers: 2, numberOfPacks: 1)
        let sut = Deck(configuration: configuration)

        // Then
        let jokerOnes = sut.deck.filter({ $0.cardIdentifier == "1-Jo-1"})
        let jokerTwos = sut.deck.filter({ $0.cardIdentifier == "1-Jo-2"})

        XCTAssertEqual(jokerOnes.count, 1)
        XCTAssertEqual(jokerTwos.count, 1)
    }

    func testDeckWithTwoPacksWithTwoJokersDoesContainFourJokersWithCorrectIdentifiers() {
        // Given
        let configuration = DeckConfiguration(includeValues: Set(CardValue.allCases), includeSuits: Set(CardSuit.allCases), numberOfJokers: 2, numberOfPacks: 2)
        let sut = Deck(configuration: configuration)

        // Then
        let jokerOnes = sut.deck.filter({ $0.cardIdentifier == "1-Jo-1"})
        let jokerTwos = sut.deck.filter({ $0.cardIdentifier == "1-Jo-2"})
        let jokerThrees = sut.deck.filter({ $0.cardIdentifier == "2-Jo-1"})
        let jokerFours = sut.deck.filter({ $0.cardIdentifier == "2-Jo-2"})

        XCTAssertEqual(jokerOnes.count, 1)
        XCTAssertEqual(jokerTwos.count, 1)
        XCTAssertEqual(jokerThrees.count, 1)
        XCTAssertEqual(jokerFours.count, 1)
    }

//    func testCreateOneDeckWithOneSuitTwoCards_isCorrectlyOrdered() {
//        // Given
//        let configuration = DeckConfiguration(includeValues: [.two, .three], includeSuits: [.spades])
//
//        // When
//        let sut = Deck(configuration: configuration)
//
//        // Then
//        let expectedDeckOrder = [ValueCard(value: .two, suit: .spades),
//                                 ValueCard(value: .three, suit: .spades)]
//
//        XCTAssertEqual(sut.deck, expectedDeckOrder)
//
//    }

}
