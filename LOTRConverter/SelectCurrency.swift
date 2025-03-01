//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Mert Palas on 24.02.2025.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting: )")
                    .fontWeight(.bold)
                // Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        
                    }
                }
                
                // Text2
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                // Currency icons2
                
                // Done Btn
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.3))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
            
        }//: ZSTACK
    }
}

#Preview {
    SelectCurrency()
}
