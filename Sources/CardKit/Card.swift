//
//  Card.swift
//  PlayingCardsKit
//
//  Created by Ryan Hill on 18/05/2022.
//

import Foundation

public enum CardValue: Int, CaseIterable {
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king

    var displayValue: String {
        switch self {
        case .ace: return "A"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .ten: return "10"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        }
    }
}

public enum CardSuit: Int, CaseIterable {
    case hearts
    case spades
    case clubs
    case diamonds

    var displayValue: String {
        switch self {
        case .hearts: return "H"
        case .spades: return "S"
        case .clubs: return "C"
        case .diamonds: return "D"
        }
    }
}

public protocol Card {
    var packIdentifier: String { get }
    var cardIdentifier: String { get }
}


