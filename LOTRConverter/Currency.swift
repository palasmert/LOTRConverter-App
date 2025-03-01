//
//  File.swift
//  LOTRConverter
//
//  Created by Mert Palas on 28.02.2025.
//

import Foundation
import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    case copperPenny = 6400
    case silverPenny = 64
    case goldPenny  = 16
    case silverPiece = 4
    case goldPiece = 1
    
    var id: Currency { self }
    
    var image: ImageResource {
        switch self {
        case .copperPenny:
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .silverPiece:
                .silverpiece
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
        }
    }
    
    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
}

