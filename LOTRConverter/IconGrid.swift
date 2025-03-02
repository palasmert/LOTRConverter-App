//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Mert Palas on 2.03.2025.
//

import Foundation
import SwiftUI

struct IconGrid: View {
    @State var selectedCurrency: Currency
    
    var body: some View {
        ZStack {
            // Currency icons
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(Currency.allCases) { currency in
                    if selectedCurrency == currency {
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                            .shadow(color: .black, radius: 20)
                            .overlay {
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(lineWidth: 3)
                                    .opacity(0.4)
                            }
                    } else {
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                            .onTapGesture {
                                selectedCurrency = currency
                            }
                    }
                }
            }
        }
    }
}
#Preview {
    IconGrid(selectedCurrency: .silverPenny)
}


